import Foundation
import ObjectMapper
import Alamofire
open class DictionaryPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "dictionary"
        }
    }
    open func `faxCoverPage`() -> FaxCoverPagePath {
        return FaxCoverPagePath(parent: self)
    }
    open func `userRole`(_ _id: String? = nil) -> UserRolePath {
        return UserRolePath(parent: self, _id: _id)
    }
    open func `permission`(_ _id: String? = nil) -> PermissionPath {
        return PermissionPath(parent: self, _id: _id)
    }
    open func `permissionCategory`(_ _id: String? = nil) -> PermissionCategoryPath {
        return PermissionCategoryPath(parent: self, _id: _id)
    }
    open func `greeting`(_ _id: String? = nil) -> GreetingPath {
        return GreetingPath(parent: self, _id: _id)
    }
    open func `secretQuestion`(_ _id: String? = nil) -> SecretQuestionPath {
        return SecretQuestionPath(parent: self, _id: _id)
    }
    open func `language`(_ _id: String? = nil) -> LanguagePath {
        return LanguagePath(parent: self, _id: _id)
    }
    open func `country`(_ _id: String? = nil) -> CountryPath {
        return CountryPath(parent: self, _id: _id)
    }
    open func `location`() -> LocationPath {
        return LocationPath(parent: self)
    }
    open func `state`(_ _id: String? = nil) -> StatePath {
        return StatePath(parent: self, _id: _id)
    }
    open func `timezone`(_ _id: String? = nil) -> TimezonePath {
        return TimezonePath(parent: self, _id: _id)
    }
    open func `brand`(_ _id: String) -> BrandPath {
        return BrandPath(parent: self, _id: _id)
    }
    open func `servicePlan`(_ _id: String) -> ServicePlanPath {
        return ServicePlanPath(parent: self, _id: _id)
    }
    open func `device`(_ _id: String? = nil) -> DevicePath {
        return DevicePath(parent: self, _id: _id)
    }
    open func `shippingOptions`() -> ShippingOptionsPath {
        return ShippingOptionsPath(parent: self)
    }
    open func `licenseTypes`() -> LicenseTypesPath {
        return LicenseTypesPath(parent: self)
    }
}
