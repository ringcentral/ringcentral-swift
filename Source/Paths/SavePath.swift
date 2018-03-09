import Foundation
import ObjectMapper
import Alamofire
open class SavePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "save"
        }
    }
}
