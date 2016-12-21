import Foundation
import ObjectMapper
import Alamofire
open class DevicePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "device"
        }
    }
    // Get Account Device List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of extension records
        open var `records`: [DeviceInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        public init() {
        }
        convenience public init(records: [DeviceInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
            self.init()
            self.records = `records`
            self.navigation = `navigation`
            self.paging = `paging`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    // Get Device by ID
    open func get(callback: @escaping (_ t: DeviceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: DeviceInfo?, error) in
            callback(t, error)
        }
    }
}
