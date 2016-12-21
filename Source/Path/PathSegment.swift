import ObjectMapper


open class PathSegment: IPath {
    public var pathSegment: String {
        return ""
    }

    public var parent: IPath?

    public var _id: String?

    public var rc: RestClient

    public init(parent: IPath?, _id: String? = nil, rc: RestClient? = nil) {
        self.parent = parent
        self._id = _id
        if rc == nil {
            self.rc = parent!.rc
        } else {
            self.rc = rc!
        }
    }
}
