# Notes for maintainers


## Setup

    carthage update --platform macOS
    carthage update --platform iOS
    carthage update --platform tvOS
    carthage update --platform watchOS


## Test

We only test on macOS. For other platforms, we just make sure that the code compiles without problem.

Create a scheme for RingCentral_macOS_Tests if it doesn't already exist.

Edit the scheme and create an environtment variable: 
    
- the key is`.rc.json` 
- the value is path to the configuration file, for example: `/Users/tyler.liu/.rc.json`.

Create the configuration file and its content should be:


    {
        "production": false,
        "server": "https://platform.devtest.ringcentral.com",
        "appKey": "appKey",
        "appSecret": "appSecret",
        "username": "username",
        "extension": "",
        "password": "password",
        "receiver":  "receiver number"
    }



## Don't forget

Push a new tag to remote every time you made some changes. 
Otherwise Carthage users won't be able to download the latest code.
