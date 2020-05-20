# SwiftLint Setup

### 1. install SwiftLint pod

	`pod 'SwiftLint'`

### 2. create a Run Script in the Build Phases of your Xcode project with the following command:

`"${PODS_ROOT}/SwiftLint/swiftlint"`

### 3. create the SwiftLine rules file ".swiftlint.yml"

`touch .swiftlint.yml | open .swiftlint.yml`

### 4. add some rules 

I like the following:

```
disabled_rules: # rule identifiers to exclude from running
 - trailing_whitespace
excluded: # paths to ignore during linting. Takes precedence over `included`.
 - Carthage
 - Pods
```

## References:

### [SwiftLint introduction tutorial](https://medium.com/cocoaacademymag/swiftlint-introduction-tutorial-cd692d41dda3)

Setup guide.

### [SwiftLint Rules](https://github.com/realm/SwiftLint/blob/master/Rules.md)

List of all rules

### [How to use SwiftLint with Xcode to enforce Swift style and conventions?](https://developerinsider.co/how-to-use-swiftlint-with-xcode-to-enforce-swift-style-and-conventions/)

Another setup guide.