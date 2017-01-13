import XCTest
import RingCentral


class AuthorizationTest: BaseTest {

    func testURLComponent() {
        var urlComponents = URLComponents(string: rc.server)!
        urlComponents.path = "/restapi/oauth/authorize"

        urlComponents.queryItems = [
            URLQueryItem(name: "response_type", value: "code"),
            URLQueryItem(name: "state", value: "state"),
            URLQueryItem(name: "redirect_uri", value: "redirect_uri"),
            URLQueryItem(name: "client_id", value: "client_id"),
        ]

        XCTAssertTrue("https://platform.devtest.ringcentral.com/restapi/oauth/authorize?response_type=code&state=state&redirect_uri=redirect_uri&client_id=client_id" == urlComponents.string!)
    }


    func testAuthorizationUri() {
        let uri = rc.authorizeUri(redirectUri: "http://baidu.com", state: "myState")
        XCTAssertTrue("https://platform.devtest.ringcentral.com/restapi/oauth/authorize?response_type=code&state=myState&redirect_uri=http://baidu.com&client_id=\(rc.appKey)" == uri)
    }

    func testAuthCode() {
        rc.authorize(authCode: "does-not-exist", redirectUri: "http://baidu.com") { token, error in
            XCTAssertNotNil(error)
        }
    }

}