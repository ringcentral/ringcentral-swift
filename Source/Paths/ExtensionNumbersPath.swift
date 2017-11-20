import Foundation
import ObjectMapper
import Alamofire
open class ExtensionNumbersPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "extension-numbers"
        }
    }
}
