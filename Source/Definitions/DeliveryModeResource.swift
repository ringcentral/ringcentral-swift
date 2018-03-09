import Foundation
import ObjectMapper
open class DeliveryModeResource: Mappable {
    /*
    */
    open var `transportType`: String?
    /*
    */
    open var `encryption`: Bool?
    /*
    */
    open var `address`: String?
    /*
    */
    open var `subscriberKey`: String?
    /*
    */
    open var `publisherKey`: String?
    /*
    */
    open var `encryptionAlgorithm`: String?
    /*
    */
    open var `encryptionKey`: String?
    /*
    */
    open var `authKey`: String?
    /*
    */
    open var `cipherKey`: String?
    /*
    */
    open var `registrationId`: String?
    /*
    */
    open var `certificateName`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(transportType: String? = nil, encryption: Bool? = nil, address: String? = nil, subscriberKey: String? = nil, publisherKey: String? = nil, encryptionAlgorithm: String? = nil, encryptionKey: String? = nil, authKey: String? = nil, cipherKey: String? = nil, registrationId: String? = nil, certificateName: String? = nil) {
        self.init()
        self.transportType = `transportType`
        self.encryption = `encryption`
        self.address = `address`
        self.subscriberKey = `subscriberKey`
        self.publisherKey = `publisherKey`
        self.encryptionAlgorithm = `encryptionAlgorithm`
        self.encryptionKey = `encryptionKey`
        self.authKey = `authKey`
        self.cipherKey = `cipherKey`
        self.registrationId = `registrationId`
        self.certificateName = `certificateName`
    }
    open func mapping(map: Map) {
        `transportType` <- map["transportType"]
        `encryption` <- map["encryption"]
        `address` <- map["address"]
        `subscriberKey` <- map["subscriberKey"]
        `publisherKey` <- map["publisherKey"]
        `encryptionAlgorithm` <- map["encryptionAlgorithm"]
        `encryptionKey` <- map["encryptionKey"]
        `authKey` <- map["authKey"]
        `cipherKey` <- map["cipherKey"]
        `registrationId` <- map["registrationId"]
        `certificateName` <- map["certificateName"]
    }
}
