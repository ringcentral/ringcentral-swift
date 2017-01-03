import Foundation
import ObjectMapper
open class DeliveryMode: Definition {
    // Notifications transportation provider name. 'APNS' (Apple Push Notifications Service)
    open var `transportType`: String?
    // Optional parameter. Specifies if the message will be encrypted or not. For APNS transport type the value is always "false"
    open var `encryption`: Bool?
    // PubNub channel name. For APNS transport type - internal identifier of a device "device_token"
    open var `address`: String?
    // PubNub subscriber credentials required to subscribe to the channel
    open var `subscriberKey`: String?
    // PubNub subscriber credentials required to subscribe to the channel. Optional (for PubNub transport type only)
    open var `secretKey`: String?
    // Encryption algorithm 'AES' (for PubNub transport type only)
    open var `encryptionAlgorithm`: String?
    // Key for notification message decryption (for PubNub transport type only)
    open var `encryptionKey`: String?
    convenience public init(transportType: String? = nil, encryption: Bool? = nil, address: String? = nil, subscriberKey: String? = nil, secretKey: String? = nil, encryptionAlgorithm: String? = nil, encryptionKey: String? = nil) {
        self.init()
        self.transportType = `transportType`
        self.encryption = `encryption`
        self.address = `address`
        self.subscriberKey = `subscriberKey`
        self.secretKey = `secretKey`
        self.encryptionAlgorithm = `encryptionAlgorithm`
        self.encryptionKey = `encryptionKey`
    }
    required public init?(map: Map) {
        super.init(map: map)
    }
    public override init() {
        super.init()
    }
    open override func mapping(map: Map) {
        `transportType` <- map["transportType"]
        `encryption` <- map["encryption"]
        `address` <- map["address"]
        `subscriberKey` <- map["subscriberKey"]
        `secretKey` <- map["secretKey"]
        `encryptionAlgorithm` <- map["encryptionAlgorithm"]
        `encryptionKey` <- map["encryptionKey"]
    }
}
