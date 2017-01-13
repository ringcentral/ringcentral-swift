# Notes for maintainers


## Setup

    carthage update --platform macOS
    carthage update --platform iOS
    carthage update --platform tvOS
    carthage update --platform watchOS


## Test

We only test on macOS. For other platforms, we just make sure that the code compiles without problem.

Create a scheme for RingCentral_macOS_Tests if it doesn't already exist.

Edit the scheme and create the following environtment variables: 
    
    production => false
    server => https://platform.devtest.ringcentral.com
    appKey => appKey
    appSecret => appSecret
    username => username
    extension =>
    password => password
    receiver => receiver number


## Don't forget

Push a new tag to remote every time you made some changes. 
Otherwise Carthage users won't be able to download the latest code.
