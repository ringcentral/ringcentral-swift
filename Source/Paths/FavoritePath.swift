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
    */
    open func get(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.getString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    */
    open func put(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.putString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    /*
    */
    open func put(parameters: Parameters, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.putString(self.endpoint(), parameters: parameters) { string, error in
            callback(error)
        }
    }
    /*
    */
    open func put(parameters: FavoriteCollection, callback: @escaping (_ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
