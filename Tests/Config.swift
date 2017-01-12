//
//  Config.swift
//  RingCentral
//
//  Created by Tyler Liu on 9/26/16.
//
//

import Foundation
import ObjectMapper

open class Config {
    open var production: Bool?
    open var server: String?
    open var appKey: String?
    open var appSecret: String?
    open var username: String?
    open var `extension`: String?
    open var password: String?
    open var receiver: String?

    open class func getInstance() -> Config {
        let config = Config()
        config.production = ProcessInfo.processInfo.environment["rc_production"]! == "true"
        config.server = ProcessInfo.processInfo.environment["rc_server"]!
        config.appKey = ProcessInfo.processInfo.environment["rc_appKey"]!
        config.appSecret = ProcessInfo.processInfo.environment["rc_appSecret"]!
        config.username = ProcessInfo.processInfo.environment["rc_username"]!
        config.extension = ProcessInfo.processInfo.environment["rc_extension"]!
        config.password = ProcessInfo.processInfo.environment["rc_password"]!
        config.receiver = ProcessInfo.processInfo.environment["rc_receiver"]!
        return config
    }
}
