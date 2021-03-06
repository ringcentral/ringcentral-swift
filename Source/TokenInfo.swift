import Foundation
import ObjectMapper
open class TokenInfo: Mappable {
    /*
     Access token to pass to subsequent API requests
     */
    open var `access_token`: String?
    /*
     Issued access token TTL (time to live), in seconds
     */
    open var `expires_in`: Int?
    /*
     Refresh token to get a new access token, when the issued one expires
     */
    open var `refresh_token`: String?
    /*
     Issued refresh token TTL (time to live), in seconds
     */
    open var `refresh_token_expires_in`: Int?
    /*
     List of permissions allowed with this access token, white-space separated
     */
    open var `scope`: String?
    /*
     Type of token. Use this parameter in Authorization header of requests
     */
    open var `token_type`: String?
    /*
     Extension identifier
     */
    open var `owner_id`: String?
    /*
     Unique identifier of a client application passed by the client, or auto-generated by server if not specified in request
     */
    open var `endpoint_id`: String?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(access_token: String? = nil, expires_in: Int? = nil, refresh_token: String? = nil, refresh_token_expires_in: Int? = nil, scope: String? = nil, token_type: String? = nil, owner_id: String? = nil, endpoint_id: String? = nil) {
        self.init()
        self.access_token = `access_token`
        self.expires_in = `expires_in`
        self.refresh_token = `refresh_token`
        self.refresh_token_expires_in = `refresh_token_expires_in`
        self.scope = `scope`
        self.token_type = `token_type`
        self.owner_id = `owner_id`
        self.endpoint_id = `endpoint_id`
    }
    open func mapping(map: Map) {
        `access_token` <- map["access_token"]
        `expires_in` <- map["expires_in"]
        `refresh_token` <- map["refresh_token"]
        `refresh_token_expires_in` <- map["refresh_token_expires_in"]
        `scope` <- map["scope"]
        `token_type` <- map["token_type"]
        `owner_id` <- map["owner_id"]
        `endpoint_id` <- map["endpoint_id"]
    }
}
