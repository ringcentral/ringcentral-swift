import Foundation
import ObjectMapper
import Alamofire
open class FederationConflictsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "federation-conflicts"
        }
    }
}
