import Foundation
import ObjectMapper
import Alamofire
open class GlipPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "glip"
        }
    }
    open func `groups`(_ _id: String? = nil) -> GroupsPath {
        return GroupsPath(parent: self, _id: _id)
    }
    open func `files`() -> FilesPath {
        return FilesPath(parent: self)
    }
    open func `cards`(_ _id: String? = nil) -> CardsPath {
        return CardsPath(parent: self, _id: _id)
    }
    open func `persons`(_ _id: String) -> PersonsPath {
        return PersonsPath(parent: self, _id: _id)
    }
    open func `companies`(_ _id: String) -> CompaniesPath {
        return CompaniesPath(parent: self, _id: _id)
    }
    open func `webhooks`(_ _id: String? = nil) -> WebhooksPath {
        return WebhooksPath(parent: self, _id: _id)
    }
}
