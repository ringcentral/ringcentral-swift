//
//  Config.swift
//  RingCentral
//
//  Created by Tyler Liu on 9/26/16.
//
//

import Foundation
import ObjectMapper

open class Config: Mappable {
    open var production: Bool?
    open var server: String?
    open var appKey: String?
    open var appSecret: String?
    open var username: String?
    open var `extension`: String?
    open var password: String?
    open var receiver: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        production  <- map["production"]
        server      <- map["server"]
        appKey      <- map["appKey"]
        appSecret   <- map["appSecret"]
        username    <- map["username"]
        `extension` <- map["extension"]
        password    <- map["password"]
        receiver    <- map["receiver"]
    }

    open class func getInstance(filePath: String = ProcessInfo.processInfo.environment[".rc.json"]!) -> Config {
        let fileContent = try! String(contentsOfFile: filePath, encoding: String.Encoding.utf8)
        return Config(JSONString: fileContent)!
    }
}
