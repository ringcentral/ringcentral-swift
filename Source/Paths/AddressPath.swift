import Foundation
import ObjectMapper
import Alamofire
open class AddressPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "address"
        }
    }
}
