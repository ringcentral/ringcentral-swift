import Foundation
import ObjectMapper
import Alamofire
open class AddressBookPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "address-book"
        }
    }
    open func `contact`(_ _id: String? = nil) -> ContactPath {
        return ContactPath(parent: self, _id: _id)
    }
    open func `group`(_ _id: String? = nil) -> GroupPath {
        return GroupPath(parent: self, _id: _id)
    }
}
