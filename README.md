# ArabicTimeAgo

[![CI Status](http://img.shields.io/travis/Abdulmomen Kadum عبدالمؤمن كاظم/ArabicTimeAgo.svg?style=flat)](https://travis-ci.org/Abdulmomen Kadum عبدالمؤمن كاظم/ArabicTimeAgo)
[![Version](https://img.shields.io/cocoapods/v/ArabicTimeAgo.svg?style=flat)](http://cocoapods.org/pods/ArabicTimeAgo)
[![License](https://img.shields.io/cocoapods/l/ArabicTimeAgo.svg?style=flat)](http://cocoapods.org/pods/ArabicTimeAgo)
[![Platform](https://img.shields.io/cocoapods/p/ArabicTimeAgo.svg?style=flat)](http://cocoapods.org/pods/ArabicTimeAgo)



[![Screenshot](art/ArabicTimeAgo_demo.png)](http://cocoapods.org/pods/ArabicTimeAgo)



## Usage

```swift
import ArabicTimeAgo
...

let itemDateStr = "2017-01-19 09:12:07"
let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"

if let date = formatter.date(from: itemDateStr) {
  print(TimeAgo.calculate(date: date, isAr: true))  // قبل 13 ساعة
  print(TimeAgo.calculate(date: date, isAr: false)) // 13 hours ago
}

```

## Requirements
Swift 3


## Installation

ArabicTimeAgo is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ArabicTimeAgo"
```

## Author

Abdulmomen Kadum عبدالمؤمن كاظم, a.bluemix@gmail.com

## License

ArabicTimeAgo is available under the MIT license. See the LICENSE file for more info.
