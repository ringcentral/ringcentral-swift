import Foundation
import ObjectMapper
import Alamofire
open class ParsePath: PathSegment {
    public override var pathSegment: String {
        get{
            return "parse"
        }
    }
    /*
    Returns one or more parsed and/or formatted phone numbers that are passed as a string.
    */
    open func post(callback: @escaping (_ t: ParsePhoneNumberResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: ParsePhoneNumberResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns one or more parsed and/or formatted phone numbers that are passed as a string.
    */
    open func post(parameters: Parameters, callback: @escaping (_ t: ParsePhoneNumberResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: ParsePhoneNumberResponse?, error) in
            callback(t, error)
        }
    }
    /*
    Returns one or more parsed and/or formatted phone numbers that are passed as a string.
    */
    open func post(parameters: PostParameters, callback: @escaping (_ t: ParsePhoneNumberResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        /*
        Internal identifier of a home country. The default value is ISO code (ISO 3166) of the user's home country or brand country, if the user is undefined
        */
        open var `homeCountry`: String?
        /*
        The default value is 'False'. If 'True', the numbers that are closer to the home country are given higher priority
        */
        open var `nationalAsPriority`: Bool?
        public init() {
        }
        required public init?(map: Map) {
        }
        convenience public init(homeCountry: String? = nil, nationalAsPriority: Bool? = nil) {
            self.init()
            self.homeCountry = `homeCountry`
            self.nationalAsPriority = `nationalAsPriority`
        }
        open func mapping(map: Map) {
            `homeCountry` <- map["homeCountry"]
            `nationalAsPriority` <- map["nationalAsPriority"]
        }
    }
}
