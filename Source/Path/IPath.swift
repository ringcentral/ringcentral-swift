import Foundation


extension String {
    func trimLeft(_ c: Character = " ") -> String {
        var str = self
        while str.characters.first == c {
            str = str.substring(from: str.index(str.startIndex, offsetBy: 1))
        }
        return str
    }

    func trimRight(_ c: Character = " ") -> String {
        var str = self
        while str.characters.last == c {
            str = str.substring(to: str.index(str.endIndex, offsetBy: -1))
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
        if parent == nil {
            return ""
        }
        var url = parent!.endpoint() <= pathSegment
        if withId && _id != nil {
            url = url <= _id!
        }
        return "/" + url.trimLeft("/")
    }

    public func url(withId: Bool = true) -> String {
        return URL(string: rc.server)!.appendingPathComponent(endpoint(withId: withId)).absoluteString
    }
}
