import Foundation
import ObjectMapper
import Alamofire
open class CompaniesPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "companies"
        }
    }
    /*
    Returns information about a company by ID.
    */
    open func get(callback: @escaping (_ t: GlipCompany?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GlipCompany?, error) in
            callback(t, error)
        }
    }
}
