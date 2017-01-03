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
    open class ListResponse: Definition {
        // List of extension records
        open var `records`: [DeviceInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        convenience public init(records: [DeviceInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
            self.init()
            self.records = `records`
            self.navigation = `navigation`
            self.paging = `paging`
        }
        required public init?(map: Map) {
            super.init(map: map)
        }
        public override init() {
            super.init()
        }
        open override func mapping(map: Map) {
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
    }
    // Get Device by ID
    open func get(callback: @escaping (_ t: DeviceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: DeviceInfo?, error) in
            callback(t, error)
        }
    }
}
