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
### 🔹 Get current UIWindow 
```swift
if let window = UIApplication.shared.currentUIWindow() {
	// handle ui window
}
```
### 🔹 Present Share Sheet
```swift
Button("Present Sheet") {
	presentShareSheet(with: ["Strings", Images, URLs])
}
```
### 🔹 Request AppStore Review
```swift
Button("Request Review") {
	requestReview()
}
```
### 🔹 Open Link
```swift
@Environment(\.openURL) var openURL

Button("Open Link") {
	// Takes in an `OpenURLAction` doesn't have to be `openURL`
	openLink("https://apple.com", with: openURL)
}
```
### 🔹 Haptic feedback
```swift
Button("Haptic") {
	// Default HapticStyle is `soft`
	haptic()
	// Other HapticStyles: light, medium, heavy, rigid, soft, success, error, warning, selection
	haptic(.heavy)
}
```

## Shared
### 🔺 Date to string with format
```swift
// Preset formats
Date().getString(with: .commaWithWeekday)
// Or custom formats
Date().getString(with: "MMMM yyyy")
```
### 🔺 Number of day to another date
```swift
Date().numberOfDays(until: anotherDate)
```
### 🔺 String to Date
```swift
"your date in string".toDate(with: "MM/dd/yyyy")
// Or use the Date.Formats
"your date in string".toDate(with: Date.Formats.slashes.rawValue)
```
### 🔺 Check if string contains emoji
```swift
"emoji 😄".hasEmoji()
```
### 🔺 Print Error
```swift
error.printError(for: "Your label")
// Output
// Error occurred: Your label
// Localized error description
// Full error
```
### 🔺 StoreKit localized price string
```swift
// iOS 15 Product
yourProduct.localizedPrice ?? "optional string"
// SKProduct
yourSKProduct.localizedPrice ?? "optional string"
```
### 🔺 Reset userdefults
```swift
UserDefaults.standard.reset(for: ["key1", "key2"])
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
> Date - Current values (day, month, year, hour, min, etc.)
```swift
Date.currentYear
```

## Docs
* [SwiftLint.md](/Sources/JsHelper/Docs/SwiftLint.md) file has steps on how to setup SwiftLint for more information, [here](https://github.com/realm/SwiftLint).
* [Fonts.md](/Sources/JsHelper/Docs/Fonts.md) file has a table of the predefined font sizes
* [NavigatoinControllerPopGesture.md](/Sources/JsHelper/Docs/NavigatoinControllerPopGesture.md) shows hot to bring back pop gesture after hiding navigation back button

## Meta

Jem Alvarez – [@official_JemAl](https://twitter.com/official_JemAl) – contact@jemalvarez.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[JsHelper](https://github.com/JemAlvarez/JsHelper)
