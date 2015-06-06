# SwiftArmy
[![Build Status](https://travis-ci.org/apradanas/swift-army.svg?branch=master)](https://travis-ci.org/apradanas/swift-army)
[![Version](https://img.shields.io/cocoapods/v/SwiftArmy.svg)](https://cocoapods.org/pods/SwiftArmy)
![License](https://img.shields.io/cocoapods/l/SwiftArmy.svg)
![Platform](https://img.shields.io/cocoapods/p/SwiftArmy.svg)

A collection of Swift extensions 

## Requirements

- iOS 7.0+ (8.0+ if you use Cocoapods)
- Xcode 6.3
- Swift 1.2

## Instalation

### Manual

Just clone and add all *.swift files in ```swift-army``` folder to your project.

### CocoaPods

	pod 'SwiftArmy', '~> 0.1'

- Don't forget to ```import SwiftArmy```

## Contents

- [Extensions](#extensions)
	- [Color](#color-uicolor)
	- [Double](#double)
	- [Float](#float)
	- [Int](#int)
	- [String](#string)
	- [Time](#time-nsdate)

## Extensions

### Color (UIColor)

Name | Signature
---- | ---------
**init** | `init(rgbaString rgba: String)`
**init** | `init(rgbaUInt rgba: UInt)`

### Double

Name | Signature
---- | ---------
**ceil** | `ceil() -> Double`
**floor** | `floor() -> Double`

### Float

Name | Signature
---- | ---------
**ceil** | `ceil() -> Float`
**floor** | `floor() -> Float`

### Int

#### Properties

Name |
---- |
`years: NSTimeInterval` |
`year: NSTimeInterval` |
`days: NSTimeInterval` |
`day: NSTimeInterval` |
`hours: NSTimeInterval` |
`hour: NSTimeInterval` |
`minutes: NSTimeInterval` |
`minute: NSTimeInterval` |
`seconds: NSTimeInterval` |
`second: NSTimeInterval` |

#### Instance Methods

Name | Signature
---- | ---------
**isEven** | `isEven() -> Bool`
**isOdd** | `isOdd() -> Bool`
**isPositive** | `isPositive() -> Bool`
**isNegative** | `isNegative() -> Bool`
**isZero** | `isZero() -> Bool`
**split** | `split() -> [Int]`
**abs** | `abs() -> Int`

### String

#### Properties

Name |
---- |
`length: Int` |

#### Instance Methods

Name | Signature
---- | ---------
**equals** | `equals(to: String) -> Bool`
**equalsIgnoreCase** | `equalsIgnoreCase(to: String) -> Bool`
**split** | `split(splitter: String) -> [String]`
**trim** | `trim() -> String`
**trimLeft** | `trimLeft(set: NSCharacterSet) -> String`
**trimRight** | `trimRight(set: NSCharacterSet) -> String`
**isValidEmail** | `isValidEmail() -> Bool`
**toDouble** | `toDouble() -> Double?`
**toFloat** | `toFloat() -> Float?`
**toUInt** | `toUInt() -> UInt?`
**toBool** | `toBool() -> Bool?`
**toDate** | `toDate(format: String?) -> NSDate?`
**toDateTime** | `toDateTime(format: String?) -> NSDate?`
**changeDateFormat** | `changeDateFormat(from: String, to: String) -> String`
**changeDateFormat** | `changeDateFormat(from: String, to: String, locale: String) -> String`

### Time (NSDate)

#### Properties

Name |
---- |
`seconds: Int` |
`minutes: Int` |
`hours: Int` |
`days: Int` |
`weekDay: Int` |
`weekMonth: Int` |
`month: Int` |
`year: Int` |

#### Instance Methods

Name | Signature
---- | ---------
**add** | `add(seconds: Int, minutes: Int, hours: Int, days: Int, weeks: Int, months: Int, years: Int) -> NSDate`
**addSeconds** | `addSeconds(seconds: Int) -> NSDate`
**addMinutes** | `addMinutes(minutes: Int) -> NSDate`
**addHours** | `addHours(hours: Int) -> NSDate`
**addDays** | `addDays(days: Int) -> NSDate`
**addWeeks** | `addWeeks(weeks: Int) -> NSDate`
**addMonths** | `addMonths(months: Int) -> NSDate`
**addYears** | `addYears(years: Int) -> NSDate`
**secondsFrom** | `secondsFrom(date: NSDate) -> Int`
**minutesFrom** | `minutesFrom(date: NSDate) -> Int`
**hoursFrom** | `hoursFrom(date: NSDate) -> Int`
**daysFrom** | `daysFrom(date: NSDate) -> Int`
**weeksFrom** | `weeksFrom(date: NSDate) -> Int`
**monthsFrom** | `monthsFrom(date: NSDate) -> Int`
**yearsFrom** | `yearsFrom(date: NSDate) -> Int`
**secondsTo** | `secondsTo(date: NSDate) -> Int`
**minutesTo** | `minutesTo(date: NSDate) -> Int`
**hoursTo** | `hoursTo(date: NSDate) -> Int`
**daysTo** | `daysTo(date: NSDate) -> Int`
**weeksTo** | `weeksTo(date: NSDate) -> Int`
**monthsTo** | `monthsTo(date: NSDate) -> Int`
**yearsTo** | `yearsTo(date: NSDate) -> Int`
**isAfter** | `isAfter(date: NSDate) -> Bool`
**isBefore** | `isBefore(date: NSDate) -> Bool`
**isSameDayAs** | `isSameDayAs(date: NSDate) -> Bool`
**isSameWeekAs** | `isSameWeekAs(date: NSDate) -> Bool`
**toLocalTime** | `toLocalTime() -> NSDate`
**toGlobalTime** | `toGlobalTime() -> NSDate`
**toTimezone** | `toTimezone(abbreviation: String!) -> NSDate?`
**toString** | `toString(format: String) -> String`
**toString** | `toString(format: String, locale: String) -> String`
**toString** | `toString(#dateStyle: NSDateFormatterStyle, timeStyle: NSDateFormatterStyle) -> String`
**toShortString** | `toShortString() -> String`
**toShortDateString** | `toShortDateString() -> String`
**toShortTimeString** | `toShortTimeString() -> String`
**toMediumString** | `toMediumString() -> String`
**toMediumDateString** | `toMediumDateString() -> String`
**toMediumTimeString** | `toMediumTimeString() -> String`
**toLongString** | `toLongString() -> String`
**toLongDateString** | `toLongDateString() -> String`
**toLongTimeString** | `toLongTimeString() -> String`

## License

SwiftArmy is licensed under the MIT License. See the [LICENSE](https://github.com/apradanas/swift-army/blob/master/LICENSE) file for more information.