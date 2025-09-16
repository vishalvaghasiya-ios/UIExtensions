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
  *Example:*  
  ```swift
  let textField = MaxLengthTextField()
  textField.maxLength = 10
  textField.placeholder = "Enter up to 10 characters"
  ```

- **UITextView+Placeholder**  
  Adds placeholder support to UITextView, similar to UITextField.  
  *Note:* Call `updatePlaceholder()` in `viewDidLayoutSubviews` to correctly layout the placeholder.  
  *Example:*  
  ```swift
  textView.placeholder = "Enter your comments here"
  override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      textView.updatePlaceholder()
  }
  ```

- **UIView+Extensions**  
  Useful UIView extensions for easier layout and styling.  
  *Example:*  
  ```swift
  view.addCornerRadius(8)
  view.addBorder(width: 1, color: .gray)
  ```

- **String+Extensions**  
  Extensions for converting and manipulating Strings.  
  *Example:*  
  ```swift
  let str = "123"
  let intValue = str.toInt        // 123
  let floatValue = str.toFloat    // 123.0
  let doubleValue = str.toDouble  // 123.0
  let boolValue = "true".toBool   // true
  ```

- **Int+Extensions**  
  Extensions for Int values, including conversion and formatting.  
  *Example:*  
  ```swift
  let num = 42
  let strValue = num.toString         // "42"
  let doubleValue = num.toDouble      // 42.0
  let boolValue = num.toBool          // true (if nonzero)
  ```

- **Float+Extensions**  
  Extensions for Float values, including conversion and formatting.  
  *Example:*  
  ```swift
  let f: Float = 3.1415
  let strValue = f.toString           // "3.1415"
  let intValue = f.toInt              // 3
  ```

- **Double+Extensions**  
  Extensions for Double values, including conversion and formatting.  
  *Example:*  
  ```swift
  let d: Double = 2.71828
  let strValue = d.toString           // "2.71828"
  let intValue = d.toInt              // 2
  let formatted = d.toString(withDecimals: 2) // "2.72"
  ```

- **Date+Extensions**  
  Extensions for Date objects, including formatting and conversion.  
  *Example:*  
  ```swift
  let date = Date()
  let formatted = date.toString(format: "yyyy-MM-dd") // "2024-06-09"
  let fromStr = Date.from(string: "2024-06-09", format: "yyyy-MM-dd")
  ```

- **Bool+Extensions**  
  Extensions for Bool values, including conversion to Int and String.  
  *Example:*  
  ```swift
  let flag = true
  let intValue = flag.toInt           // 1
  let strValue = flag.toString        // "true"
  ```

## 🛠 Requirements

- iOS 11.0+
- Swift 5.0+

## 📦 Installation

Add the package to your project using Swift Package Manager:

```
https://github.com/vishalvaghasiya-ios/UIExtensions.git
```

Or add it via Xcode's Swift Packages interface by pasting the above URL.

## 🚀 Usage

> **Note:**  
> To use the extensions and components provided by this package, make sure to import `UIExtensions` at the top of your Swift files:
>
> ```swift
> import UIExtensions
> ```

- **MaxLengthTextField**  
  Can be used directly in Storyboard by setting the class of a UITextField to `MaxLengthTextField`.

- **UITextView+Placeholder**  
  Use the placeholder property directly in code or Storyboard. Remember to call `updatePlaceholder()` in `viewDidLayoutSubviews`.  
  For example:

  ```swift
  override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      textView.updatePlaceholder()
  }
  ```

- **UIView+Extensions**  
  Use the provided UIView extensions anywhere in your code for easy styling and layout.

- **String, Int, Float, Double, Date, Bool Conversions**  
  Use the extension methods to convert and format values conveniently.

## ⚠️ Notes

- For `UITextView+Placeholder`, make sure to call `updatePlaceholder()` inside your view controller's `viewDidLayoutSubviews` method to ensure the placeholder is positioned correctly.  
  Example usage:

  ```swift
  override func viewDidLayoutSubviews() {
      super.viewDidLayoutSubviews()
      textView.updatePlaceholder()
  }
  ```

- `UITextView+Placeholder`, `UIView+Extensions`, and `MaxLengthTextField` support direct usage via Storyboard, simplifying UI development.

## 📝 Version

1.0.0

## 👤 Author

Vishal Vaghasiya  
GitHub: [vishalvaghasiya-ios](https://github.com/vishalvaghasiya-ios)
