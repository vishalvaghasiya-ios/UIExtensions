# UIExtension

## Table of Contents
- [✨ Features](#-features)
- [🛠 Requirements](#-requirements)
- [📦 Installation](#-installation)
- [🚀 Usage](#-usage)
- [⚠️ Notes](#-notes)
- [📝 Version](#-version)
- [👤 Author](#-author)

## ✨ Features

- **MaxLengthTextField**  
  A UITextField subclass that limits the maximum number of characters a user can input.

- **UITextView+Placeholder**  
  Adds placeholder support to UITextView, similar to UITextField.  
  *Note:* Call `updatePlaceholder()` in `viewDidLayoutSubviews` to correctly layout the placeholder.

- **UIView+Extensions**  
  Useful UIView extensions for easier layout and styling.

- **String+Conversion**  
  Extensions for converting Strings to other data types safely.

- **Int+Conversion**  
  Extensions for converting Int values to other types or formatted strings.

- **Float+Conversion**  
  Extensions to convert Float values conveniently.

- **Double+Conversion**  
  Extensions for Double type conversions and formatting.

- **Date+Formatting**  
  Extensions to format and convert Date objects.

- **Bool+Conversion**  
  Extensions to convert Bool values to different representations.

## 🛠 Requirements

- iOS 11.0+
- Swift 5.0+

## 📦 Installation

Add the package to your project using Swift Package Manager:

```swift
dependencies: [
    .package(url: "https://github.com/vishalvaghasiya-ios/UIExtensions.git", from: "1.0.0")
]
```

Or add it via Xcode's Swift Packages interface.

## 🚀 Usage

- **MaxLengthTextField**  
  Can be used directly in Storyboard by setting the class of a UITextField to `MaxLengthTextField`.

- **UITextView+Placeholder**  
  Use the placeholder property directly in code or Storyboard. Remember to call `updatePlaceholder()` in `viewDidLayoutSubviews`.

- **UIView+Extensions**  
  Use the provided UIView extensions anywhere in your code for easy styling and layout.

- **String, Int, Float, Double, Date, Bool Conversions**  
  Use the extension methods to convert and format values conveniently.

## ⚠️ Notes

- For `UITextView+Placeholder`, make sure to call `updatePlaceholder()` inside your view controller's `viewDidLayoutSubviews` method to ensure the placeholder is positioned correctly.

- `UITextView+Placeholder`, `UIView+Extensions`, and `MaxLengthTextField` support direct usage via Storyboard, simplifying UI development.

## 📝 Version

1.0.0

## 👤 Author

Vishal Vaghasiya  
GitHub: [vishalvaghasiya-ios](https://github.com/vishalvaghasiya-ios)
