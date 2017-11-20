import Foundation
import ObjectMapper
import Alamofire
open class GlipPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "glip"
        }
    }
    open func `companies`(_ _id: String) -> CompaniesPath {
        return CompaniesPath(parent: self, _id: _id)
    }
    open func `groups`(_ _id: String? = nil) -> GroupsPath {
        return GroupsPath(parent: self, _id: _id)
    }
    open func `persons`(_ _id: String) -> PersonsPath {
        return PersonsPath(parent: self, _id: _id)
    }
    open func `posts`() -> PostsPath {
        return PostsPath(parent: self)
    }
    open func `files`(_ _id: String? = nil) -> FilesPath {
        return FilesPath(parent: self, _id: _id)
    }
    open func `profile`() -> ProfilePath {
        return ProfilePath(parent: self)
    }
}
