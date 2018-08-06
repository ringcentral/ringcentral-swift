import Foundation
import ObjectMapper
import Alamofire
open class FavoritePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "favorite"
        }
    }
    /*
    Returns the list of favorite contacts of the current extension. Favorite contacts include both company contacts (extensions) and personal contacts (address book records).
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Updates the list of favorite contacts of the current extension. Favorite contacts include both company contacts (extensions) and personal contacts (address book records).**Please note**: currently personal address book size is limited to 10 000 contacts.
    */
    open func put(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.putString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    Updates the list of favorite contacts of the current extension. Favorite contacts include both company contacts (extensions) and personal contacts (address book records).**Please note**: currently personal address book size is limited to 10 000 contacts.
    */
    open func put(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.putString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    Updates the list of favorite contacts of the current extension. Favorite contacts include both company contacts (extensions) and personal contacts (address book records).**Please note**: currently personal address book size is limited to 10 000 contacts.
    */
    open func put(parameters: FavoriteCollection, callback: @escaping (_ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
