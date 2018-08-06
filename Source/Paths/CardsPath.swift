import Foundation
import ObjectMapper
import Alamofire
open class CardsPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "cards"
        }
    }
    /*
    Creates a new card.
    */
    open func post(callback: @escaping (_ t: GlipMessageAttachmentInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: GlipMessageAttachmentInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a new card.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: GlipMessageAttachmentInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: GlipMessageAttachmentInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Creates a new card.
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: GlipMessageAttachmentInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Internal identifier of a group where to create a post with the card
        */
        open var `groupId`: Int?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(groupId: Int? = nil) {
            self.init()
            self.groupId = `groupId`
        }
        open func mapping(map: Map) {
            `groupId` <- map["groupId"]
        }
    }
    /*
    Returns card(s) with given id(s).
    */
    open func get(callback: @escaping (_ t: GlipMessageAttachmentInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GlipMessageAttachmentInfo?, error) in
            callback(t, error)
        }
    }
    /*
    Updates a card
    */
    open func put(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.putString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Updates a card
    */
    open func put(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.putString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    Updates a card
    */
    open func put(parameters: GlipMessageAttachmentInfoRequest, callback: @escaping (_ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
    /*
    Deletes a card by ID.
    */
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
}
