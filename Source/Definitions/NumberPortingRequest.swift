import Foundation
import ObjectMapper
open class NumberPortingRequest: Mappable {
    /*
    */
    open var `rcAccountId`: Int?
    /*
    */
    open var `rcOrderId`: Int?
    /*
    */
    open var `orderStatus`: String?
    /*
    */
    open var `timestamp`: String?
    /*
    */
    open var `jcode`: String?
    /*
    */
    open var `completionDate`: String?
    /*
    */
    open var `transferDate`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(rcAccountId: Int? = nil, rcOrderId: Int? = nil, orderStatus: String? = nil, timestamp: String? = nil, jcode: String? = nil, completionDate: String? = nil, transferDate: String? = nil) {
        self.init()
        self.rcAccountId = `rcAccountId`
        self.rcOrderId = `rcOrderId`
        self.orderStatus = `orderStatus`
        self.timestamp = `timestamp`
        self.jcode = `jcode`
        self.completionDate = `completionDate`
        self.transferDate = `transferDate`
    }
    open func mapping(map: Map) {
        `rcAccountId` <- map["rcAccountId"]
        `rcOrderId` <- map["rcOrderId"]
        `orderStatus` <- map["orderStatus"]
        `timestamp` <- map["timestamp"]
        `jcode` <- map["jcode"]
        `completionDate` <- map["completionDate"]
        `transferDate` <- map["transferDate"]
    }
}
