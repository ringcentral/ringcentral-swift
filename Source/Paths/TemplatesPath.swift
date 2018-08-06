import Foundation
import ObjectMapper
import Alamofire
open class TemplatesPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "templates"
        }
    }
    /*
    */
    open func list(callback: @escaping (_ t: UserTemplates?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false)) { (t: UserTemplates?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func list(parameters: Parameters, callback: @escaping (_ t: UserTemplates?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(withId: false), parameters: parameters) { (t: UserTemplates?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func list(parameters: ListParameters, callback: @escaping (_ t: UserTemplates?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        /*
        */
        open var `type`: String?
        /*
        */
        open var `page`: String?
        /*
        */
        open var `perPage`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(type: String? = nil, page: String? = nil, perPage: String? = nil) {
            self.init()
            self.type = `type`
            self.page = `page`
            self.perPage = `perPage`
        }
        open func mapping(map: Map) {
            `type` <- map["type"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
    }
    /*
    */
    open func get(callback: @escaping (_ t: TemplateInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: TemplateInfo?, error) in
            callback(t, error)
        }
    }
}
