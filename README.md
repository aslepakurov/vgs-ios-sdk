# vgs-ios-sdk
[![Build Status](https://travis-ci.org/verygoodsecurity/vgs-ios-sdk.svg?branch=rewrite)](https://travis-ci.org/verygoodsecurity/vgs-ios-sdk)

Very Good Security Vault iOS SDK

## Usage example in Swift 3.0

```Swift
import VaultSDK

let api = VaultAPI(
    baseURL: URL(string: "https://demo.sandbox.verygoodvault.com")!,
    publishableKey: "demo-user"
)
api.createToken(
    payload: "4111111111111111",
    failure: { error in
        // Handle the error here
    },
    success: { token in
        // Use the token here
    }
)
 ```

## Usage example in Objective C

Import the SDK like this

```ObjectiveC
@import VaultSDK;
```

then

```ObjectiveC
VaultAPI *api = [[VaultAPI alloc] initWithBaseURL:[NSURL URLWithString:@"https://demo.sandbox.verygoodvault.com"] publishableKey:@"demo-user" urlSession:[NSURLSession sharedSession]];

[api createTokenWithPayload:@"foobar" failure:^(NSError * _Nonnull error) {
    // Handle the error here
} success:^(NSDictionary<NSString *,id> * _Nonnull token) {
    // Use the token here
}];
```

## Install via CocoaPods

To install the VaultSDK via CocoaPods, put following line in your Podfile

```
pod 'VaultSDK', '~> 1.0'
```
