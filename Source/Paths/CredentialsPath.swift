import Foundation
import ObjectMapper
import Alamofire
open class CredentialsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "credentials"
        }
    }
    open func `validate`() -> ValidatePath {
        return ValidatePath(parent: self)
    }
    open func `verify`() -> VerifyPath {
        return VerifyPath(parent: self)
    }
}
