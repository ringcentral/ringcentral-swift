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
    
    rc_production => false
    rc_server => https://platform.devtest.ringcentral.com
    rc_appKey => appKey
    rc_appSecret => appSecret
    rc_username => username
    rc_extension =>
    rc_password => password
    rc_receiver => receiver number


## Don't forget

Push a new tag to remote every time you made some changes. 
Otherwise Carthage users won't be able to download the latest code.


## Troubleshooting

Sometimes Travis fails due to: https://github.com/Carthage/Carthage/issues/1236

You need to add a GITHUB_ACCESS_TOKEN env variable.
