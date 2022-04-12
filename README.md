# Onboarder
> Create a beautiful Onabording for your iOS/iPadOS apps in just a few minutes.


## Installation

1. In XCode 12 go to `File -> Swift Packages -> Add Package Dependency` or in XCode 13 `File -> Add Packages`
2. Paste in the repo's url: ```https://github.com/JemAlvarez/JsHelper``` and select by version.



## Import
> [JsHelper](https://github.com/JemAlvarez/JsHelper)
```swift
import JsHelper
```
> [Onboarder](https://github.com/JemAlvarez/onboarder)
```swift
import Onboarder
```

## UIKit
### Add constraints on all anchors for a view
```swift 
// 
yourView.addConstraints(equalTo: parentView)
```
### Add constraints on specified anchors with optional constant for a view
```swift 
parentView.addConstraints(for: yourSubview, with: [
	Constraint(constraint: .top, constant: 50),
	Constraint(constraint: .leading)
])
```
### 
```swift
func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let window = makeWindow(for: scene, with: ViewController()) {
            self.window = window
        }
    }
```

## [Onboarder](https://github.com/JemAlvarez/onboarder)
For detailed usage information on [Onboarder](https://github.com/JemAlvarez/onboarder), checkout the the [Onboarder](https://github.com/JemAlvarez/onboarder) repo [here](https://github.com/JemAlvarez/onboarder).

## Meta

Jem Alvarez – [@official_JemAl](https://twitter.com/official_JemAl) – contact@jemalvarez.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[JsHelper](https://github.com/JemAlvarez/JsHelper)
