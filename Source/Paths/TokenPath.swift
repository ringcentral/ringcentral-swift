import Foundation
import ObjectMapper
import Alamofire
open class TokenPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "token"
        }
    }
    /*
    */
    open func post(callback: @escaping (_ t: TokenInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: TokenInfo?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: TokenInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: TokenInfo?, error) in
            callback(t, error)
        }
    }
    /*
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: TokenInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Must hold password value for Resource Owner Credentials flow. If client application is not authorized by the specified grant_type, response does not contain refresh_token and refresh_token_ttl attributes
        */
        open var `grant_type`: String?
        /*
        Optional. Access token lifetime in seconds; the possible values are from 600 sec (10 min) to 3600 sec (1 hour). The default value is 3600 sec. If the value specified exceeds the default one, the default value is set. If the value specified is less than 600 seconds, the minimum value (600 sec) is set
        */
        open var `access_token_ttl`: Int?
        /*
        Optional. Refresh token lifetime in seconds. The default value depends on the client application, but as usual it equals to 7 days. If the value specified exceeds the default one, the default value is applied. If client specifies refresh_token_ttl<=0, refresh token is not returned even if the corresponding grant type is supported
        */
        open var `refresh_token_ttl`: Int?
        /*
        Phone number linked to account or extension in account in E.164 format with or without leading "+" sign
        */
        open var `username`: String?
        /*
        Optional. Extension short number. If company number is specified as a username, and extension is not specified, the server will attempt to authenticate client as main company administrator
        */
        open var `extension`: String?
        /*
        User's password
        */
        open var `password`: String?
        /*
        Optional. List of API permissions to be used with access token (see Application Permissions). Can be omitted when requesting all permissions defined during the application registration phase
        */
        open var `scope`: String?
        /*
        Optional. Unique identifier of a client application. You can pass it in request according to pattern [a-zA-Z0-9_\-]{1,64}. Otherwise it is auto-generated by server. The value will be returned in response in both cases
        */
        open var `endpoint_id`: String?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(grant_type: String? = nil, access_token_ttl: Int? = nil, refresh_token_ttl: Int? = nil, username: String? = nil, extension: String? = nil, password: String? = nil, scope: String? = nil, endpoint_id: String? = nil) {
            self.init()
            self.grant_type = `grant_type`
            self.access_token_ttl = `access_token_ttl`
            self.refresh_token_ttl = `refresh_token_ttl`
            self.username = `username`
            self.extension = `extension`
            self.password = `password`
            self.scope = `scope`
            self.endpoint_id = `endpoint_id`
        }
        open func mapping(map: Map) {
            `grant_type` <- map["grant_type"]
            `access_token_ttl` <- map["access_token_ttl"]
            `refresh_token_ttl` <- map["refresh_token_ttl"]
            `username` <- map["username"]
            `extension` <- map["extension"]
            `password` <- map["password"]
            `scope` <- map["scope"]
            `endpoint_id` <- map["endpoint_id"]
        }
    }
}
