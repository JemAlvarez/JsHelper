# Onboarder
> Create a beautiful Onabording for your iOS/iPadOS apps in just a few minutes.


## Installation

1. In XCode 12 go to `File -> Swift Packages -> Add Package Dependency` or in XCode 13 `File -> Add Packages`
2. Paste in the repo's [url](https://github.com/JemAlvarez/JsHelper`): 
```
https://github.com/JemAlvarez/JsHelper
```

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
### 🔸 Add constraints on all anchors for a view
```swift 
yourSubview.addConstraints(equalTo: yourParentView)
```
### 🔸 Setup UIKit with no Storyboards
1. Add the following code in SceneDelegate
2. Follow steps in `makeWindow` function documnetation
```swift
func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
	if let window = makeWindow(for: scene, with: ViewController()) {
		self.window = window
	}
}
```

### 🔸 Get hex string from UIColor
```swift
UIColor.blue.getHexString()
```

### 🔸 Initialize UIColor from hex string
```swift
UIColor(hex: "#000000")
```

## SwiftUI
### 🔹 Get hex string from Color
```swift
Color.blue.getHexString()
```

### 🔹 Initialize Color from hex string
```swift
Color(hex: "#000000")
```

## Shared
### Date to string with format
```swift
Date().getString(for: .commaWithWeekday)
```

## [Onboarder](https://github.com/JemAlvarez/onboarder)
For detailed usage information on [Onboarder](https://github.com/JemAlvarez/onboarder), checkout the the [Onboarder](https://github.com/JemAlvarez/onboarder) repo [here](https://github.com/JemAlvarez/onboarder).

## Defaults
Default values for the following:
> Font Sizes - Includes all predefined fonts in their CGFloat size
```swift
.font(.system(size: .body))
```
> Opacities - Low, Medium, High
```swift
.opacity(.opacityLow)
```
> URL - Default unwrapped url
```swift
URL(string: "Invalid URL") ?? .defaultURL
```

## Docs
* [SwiftLint.md](/Sources/JsHelper/Docs/SwiftLint.md) file has steps on how to setup SwiftLint for more information, [here](https://github.com/realm/SwiftLint).
* [Fonts.md](/Sources/JsHelper/Docs/Fonts.md) file has a table of the predefined font sizes

## Meta

Jem Alvarez – [@official_JemAl](https://twitter.com/official_JemAl) – contact@jemalvarez.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[JsHelper](https://github.com/JemAlvarez/JsHelper)
