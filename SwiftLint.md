# Add SwiftLint to XCode

## Install
```
brew install swiftlint
```

## Steps
1. Project
2. Target
3. Build Phases
4. New Run Script Phase
5. Copy/Paste code bellow

## Usage
Export PATH only need if XCode can't detect path due to `brew` on Apple Silicon 
```
// export PATH="$PATH:/opt/homebrew/bin"
if which swiftlint > /dev/null; then
  swiftlint
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi
```
