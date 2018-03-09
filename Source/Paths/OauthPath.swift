import Foundation
import ObjectMapper
import Alamofire
open class OauthPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "oauth"
        }
    }
    open func `authorize`() -> AuthorizePath {
        return AuthorizePath(parent: self)
    }
    open func `revoke`() -> RevokePath {
        return RevokePath(parent: self)
    }
    open func `token`() -> TokenPath {
        return TokenPath(parent: self)
    }
    open func `appInfo`() -> AppInfoPath {
        return AppInfoPath(parent: self)
    }
    open func `appSession`() -> AppSessionPath {
        return AppSessionPath(parent: self)
    }
    open func `generateCode`() -> GenerateCodePath {
        return GenerateCodePath(parent: self)
    }
}
