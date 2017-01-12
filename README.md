# RingCentral Swift Client

[![Build status](https://travis-ci.org/tylerlong/ringcentral-swift-client.svg?branch=master)](https://travis-ci.org/tylerlong/ringcentral-swift-client)
[![Coverage Status](https://coveralls.io/repos/github/tylerlong/ringcentral-swift-client/badge.svg?branch=master)](https://coveralls.io/github/tylerlong/ringcentral-swift-client?branch=master)


## Requirements

- iOS 9.0+ / macOS 10.11+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 8.0+
- Swift 3.0+


## Installation

The recommended way to install this framework is via [Carthage](https://github.com/Carthage/Carthage).

Add the following to your Cartfile:

    github "tylerlong/ringcentral-swift-client"


## Authorization

```swift
let rc = RestClient(appKey: "", appSecret: "", production: false)
rc.authorize("username", ext: "", password: "password") { token, error in
    if error == nil {
        print("Authorized!")
    }
}
```


## Token Refresh

By default, there is a background timer calling `rc.refresh()` periodically, so the authorization never expires.

But if you would like to call refresh manually: `rc.autoRefreshToken = false`


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
    print(notification.json!)
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


## License

This project is released under the MIT license.
