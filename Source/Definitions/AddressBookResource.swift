import Foundation
import ObjectMapper
open class AddressBookResource: Mappable {
    /*
    */
    open var `uri`: String?
    /*
    */
    open var `contacts`: ResourceLink?
    /*
    */
    open var `groups`: ResourceLink?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(uri: String? = nil, contacts: ResourceLink? = nil, groups: ResourceLink? = nil) {
        self.init()
        self.uri = `uri`
        self.contacts = `contacts`
        self.groups = `groups`
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `contacts` <- map["contacts"]
        `groups` <- map["groups"]
    }
}
