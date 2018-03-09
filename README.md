
# RingCentral Swift Client

[![Build status](https://travis-ci.org/ringcentral/ringcentral-swift.svg?branch=master)](https://travis-ci.org/ringcentral/ringcentral-swift)
[![Coverage Status](https://coveralls.io/repos/github/ringcentral/ringcentral-swift/badge.svg?branch=master)](https://coveralls.io/github/ringcentral/ringcentral-swift?branch=master)

## What is RingCentral platform?
RingCentral Developer platform provides a set of over 70 APIs for business communications. Here are main platform's capabilities:
__Voice - SMS/MMS – Fax - Team messaging – Data - Configurations__

[Read API reference](https://developer.ringcentral.com/api-docs/latest/index.html) and [Try APIs online](https://developer.ringcentral.com/api-explorer/latest/index.html).


## Requirements

- iOS 9.0+ / macOS 10.11+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 8.0+
- Swift 3.0+


## Version requirements

For Swift 3.1 or earlier, use version 0.5.0.

For Swift 4 or later, use the latest version.


## Installation

The recommended way to install this framework is via [Carthage](https://github.com/Carthage/Carthage).

Add the following to your Cartfile:

    github "ringcentral/ringcentral-swift"

Denpending on your target platform, run **one** of the following:

    carthage update --platform macOS
    carthage update --platform iOS
    carthage update --platform tvOS
    carthage update --platform watchOS

Built libraries will be available in `./Carthage/Build/`.


## URL Builder

Given any API endpoint, taking `/restapi/v1.0/account/~/extension/~/call-log` for example.

You can build its url with code easily:

```swift
let restapiVersion = "v1.0"
let accountID = "~"
let extensionId = "~"
```

### URL Builder helps you to build your URL with ease

```swift
rc.restapi(restapiVersion).account(accountID).extension(extensionId).callLog()
```

### Please ***NEVER*** do string concatenation like below

```swift
"/restapi" + restapiVersion + "/account/" + accountID + "/extension/" + extensionId + "/call-log"
```

### Default Value

Default value for `restapi` is "v1.0"; default value for `account` and `extension` are both "~".

If you don't specify an explicit value, default value is used.

So the following two lines are equivalent:

```swift
rc.restapi().account().extension()
rc.restapi("v1.0").account("~").extension("~")
```


## Authorization

```swift
let rc = RestClient(appKey: "", appSecret: "", production: false)
rc.authorize("username", ext: "", password: "password") { token, error in
    if error == nil {
        print("Authorized!")
    }
}
```


### Token Refresh

By default, there is a background timer calling `rc.refresh()` periodically, so the authorization never expires.

But if you would like to call refresh manually: `rc.autoRefreshToken = false`


### Token Revoke

When you no longer need the token, don't forget to revoke it: `rc.revoke()`.


## Sample for list, get, post, put and delete

### list

```swift
// /restapi/v1.0/account/~/extension/~/address-book
let addressBook = rc.restapi("v1.0").account("~").extension("~").addressBook()
addressBook.contact().list() { list, error in
    print(list!.paging!.page) // 1
}
```

### post

```swift
addressBook.contact().post(parameters: [ "firstName": "Tyler", "lastName": "Long", "homePhone": phoneNumber ]) { contact, error in
    print(contact!.lastName) // Long
}
```

### get

```swift
addressBook.contact("\(contact.id!)").get(){ contact, error in
    print(contact.lastName) // Long
}
```

### put

```swift
contact.lastName = "Liu"
addressBook.contact("\(contact.id!)").put(parameters: contact.toParameters()) { contact2, error in
    print(contact2.lastName) // Liu
}
```

### delete

```swift
addressBook.contact("\(item.id!)").delete() { error in
    print(error == nil) // true
}
```


## Send SMS

```swift
let parameters = SmsPath.PostParameters(
    from: CallerInfo(phoneNumber: "123456789"),
    to: [CallerInfo(phoneNumber: "123456789")],
    text: "hello world"
)
rc.restapi().account().extension().sms().post(parameters: parameters) { messageInfo, error in
    if error == nil {
        print("SMS sent!")
    }
}
```


## PubNub Subscription

```swift
let subscription = rc.restapi().subscription().new()
subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/message-store")
subscription.eventFilters.append("/restapi/v1.0/account/~/extension/~/presence?detailedTelephonyState=true")
subscription.listeners.append { notification in
    print(notification.json!) // If you want to parse JSON data yourself, here it is.
    switch notification.type! {
        case .Message:
            let messageNotification: MessageNotification = notification.downcast()!
            print(messageNotification.body!.extensionId!)
            break
        case .DetailedPresence:
            let detailedPresenceNotification: DetailedPresenceNotification = notification.downcast()!
            print(detailedPresenceNotification.body!.extensionId!)
            break
        default:
            break
    }
}
```


### Remove Subscription

When you no longer need a subscription, don't forget to remove it:

```swift
subscription.remove()
```


## Send fax

```swift
let parameters = FaxPath.PostParameters(to: [CallerInfo(phoneNumber: "1234567890")])
var attachments: [Attachment] = []
attachments.append(Attachment(fileName: "test.pdf", contentType: "application/pdf", data: pdfData))
rc.restapi().account().extension().fax().post(parameters: parameters, attachments: attachments) { messageInfo, error in
    if error == nil {
        print("fax sent")
    }
}
```


## Upload binary file

```swift
rc.restapi().account().extension().profileImage().put(imageData: imageData, imageFileName: "test.png") { error in
    if error == nil {
        print("Profile image updated")
    }
}
```


## More sample code

The [test cases](https://github.com/ringcentral/ringcentral-swift/tree/master/Tests) contain lots of sample code.


## License

This project is released under the MIT license.
