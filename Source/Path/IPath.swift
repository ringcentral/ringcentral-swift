import Foundation


extension String {
    func trimLeft(_ c: Character = " ") -> String {
        var str = self
        while str.characters.first == c {
            str = String(str.dropFirst())
        }
        return str
    }

    func trimRight(_ c: Character = " ") -> String {
        var str = self
        while str.characters.last == c {
            str = String(str.dropLast())
        }
        return str
    }
}

func <= (left: String, right: String) -> String {
    return left.trimRight("/") + "/" + right.trimLeft("/")
}


public protocol IPath {
    var _id: String? {get set}
    var parent: IPath? {get set}
    var rc: RestClient {get set}
    var pathSegment: String {get}
    func endpoint(withId: Bool) -> String
    func url(withId: Bool) -> String
}

extension IPath {
    public func endpoint(withId: Bool = true) -> String {
        var result = pathSegment
        if parent != nil {
            result = parent!.endpoint() <= result
        }
        if withId && _id != nil {
            result = result <= _id!
        }
        return "/" + result.trimLeft("/")
    }

    public func url(withId: Bool = true) -> String {
        return URL(string: rc.server)!.appendingPathComponent(endpoint(withId: withId)).absoluteString
    }
}
