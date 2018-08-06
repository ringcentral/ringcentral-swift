import Foundation
import ObjectMapper
import Alamofire
open class DirectoryPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "directory"
        }
    }
    open func `contacts`(_ _id: String? = nil) -> ContactsPath {
        return ContactsPath(parent: self, _id: _id)
    }
    open func `federation`() -> FederationPath {
        return FederationPath(parent: self)
    }
}
