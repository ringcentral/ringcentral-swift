import PubNub
import Alamofire
import Async
import CryptoSwift


extension SubscriptionPath {

    public func new() -> SubscriptionService {
        return SubscriptionService(rc)
    }

}


open class SubscriptionService: NSObject, PNObjectEventListener {

    var rc: RestClient!
    var pubnub: PubNub?

    public var eventFilters: [String] = []
    public var listeners: [(Notification) -> Void] = []

    var parameters: Parameters {
        get {
            let deliveryMode: Parameters = ["transportType": "PubNub", "encryption": true]
            return ["eventFilters": eventFilters, "deliveryMode": deliveryMode]
        }
    }

    var _subscriptionInfo: SubscriptionInfo?
    private var renewScheduled = false
    var subscriptionInfo: SubscriptionInfo? {
        get {
            return _subscriptionInfo
        }
        set(value) {
            _subscriptionInfo = value
            if _subscriptionInfo != nil && !renewScheduled {
                Async.background(after: Double(_subscriptionInfo!.expiresIn! - 120)) {
                    self.renew() { error in
                        self.renewScheduled = false
                    }
                }
                renewScheduled = true
            }
        }
    }

    public init(_ rc: RestClient) {
        self.rc = rc
    }

    public func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
        let base64Message = message.data.message as! String
        let encrypted = Data(base64Encoded: base64Message)!.bytes
        let key = Data(base64Encoded: subscriptionInfo!.deliveryMode!.encryptionKey!)!.bytes
        let decrypted = try! AES(key: key, iv: nil, blockMode: .ECB, padding: PKCS7()).decrypt(encrypted)
        let json = String(bytes: decrypted, encoding: String.Encoding.utf8)!
        for listener in listeners {
            let notification = Notification(json: json)!
            listener(notification)
        }
    }

    open func register(callback: @escaping (_ error: HTTPError?) -> Void) {
        if alive() {
            renew(callback: callback)
        } else {
            subscribe(callback: callback)
        }
    }

    open func subscribe(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.restapi("v1.0").subscription().post(parameters: parameters) { subscriptionInfo, error in
            if let error = error {
                return callback(error)
            }
            self.subscriptionInfo = subscriptionInfo
            let configuration = PNConfiguration(publishKey: "", subscribeKey: subscriptionInfo!.deliveryMode!.subscriberKey!)
            self.pubnub = PubNub.clientWithConfiguration(configuration)
            self.pubnub!.addListener(self)
            self.pubnub!.subscribeToChannels([subscriptionInfo!.deliveryMode!.address!], withPresence: true)
            callback(nil)
        }
    }

    open func renew(callback: @escaping (_ error: HTTPError?) -> Void) {
        if !alive() { // Remove() has been called
            return callback(HTTPError(statusCode: -1, message: "Subscription has been removed"))
        }
        rc.restapi("v1.0").subscription(subscriptionInfo!.id!).put(parameters: parameters) { subscriptionInfo, error in
            if let error = error {
                if error.statusCode == 404 {
                    return self.subscribe(callback: callback)
                }
                return callback(error)
            }
            self.subscriptionInfo = subscriptionInfo
            callback(nil)
        }
    }

    open func remove(callback: @escaping (_ error: HTTPError?) -> Void) {
        if !alive() { // Remove() has been called
            return callback(nil)
        }
        rc.restapi("v1.0").subscription(subscriptionInfo!.id!).delete() { error in
            if let error = error {
                return callback(error)
            }
            self.subscriptionInfo = nil
            self.pubnub = nil
            callback(nil)
        }
    }

    open func alive() -> Bool {
        if let _ = pubnub, let subscriptionInfo = subscriptionInfo {
            if subscriptionInfo.id != nil {
                if let deliveryMode = subscriptionInfo.deliveryMode {
                    if deliveryMode.subscriberKey != nil && deliveryMode.address != nil {
                        return true
                    }
                }
            }
        }
        return false
    }

}