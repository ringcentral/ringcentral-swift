import Foundation
import ObjectMapper
open class StackTraceElement: Mappable {
    /*
    */
    open var `methodName`: String?
    /*
    */
    open var `fileName`: String?
    /*
    */
    open var `lineNumber`: Int?
    /*
    */
    open var `className`: String?
    /*
    */
    open var `nativeMethod`: Bool?
    public init() {
    }
    required public init?(map: Map) {
    }
    convenience public init(methodName: String? = nil, fileName: String? = nil, lineNumber: Int? = nil, className: String? = nil, nativeMethod: Bool? = nil) {
        self.init()
        self.methodName = `methodName`
        self.fileName = `fileName`
        self.lineNumber = `lineNumber`
        self.className = `className`
        self.nativeMethod = `nativeMethod`
    }
    open func mapping(map: Map) {
        `methodName` <- map["methodName"]
        `fileName` <- map["fileName"]
        `lineNumber` <- map["lineNumber"]
        `className` <- map["className"]
        `nativeMethod` <- map["nativeMethod"]
    }
}
