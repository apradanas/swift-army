# SwiftArmy
![CocoaPods](https://img.shields.io/cocoapods/v/SwiftArmy.svg)

A collection of Swift extensions 

## Requirements

- iOS 7.0+ (8.0+ if you use Cocoapods)
- Xcode 6.3
- Swift 1.2

## Instalation

### Manual

Just clone and add all *.swift files in ```swift-army``` to your project.

### CocoaPods

``` pod 'SwiftArmy'```

- Don't forget to ```import SwiftArmy```

## Extensions

### Color (UIColor)

Name | Signature
---- | ---------
**init** | `init(rgba: String)`
**init** | `init(rgb: Int, alpha: CGFloat)`

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

### String

#### Properties

Name |
---- |
`length` |

#### Instance Methods

Name | Signature
---- | ---------
**equals** | `equals(to: String) -> Bool`
**equalsIgnoreCase** | `equalsIgnoreCase(to: String) -> Bool`
**split** | `split(splitter: String) -> [String]`
**trimmed** | `trimmed() -> String`
**trimmedLeft** | `trimmedLeft(set: NSCharacterSet) -> String`
**trimmedRight** | `trimmedRight(set: NSCharacterSet) -> String`
**toDouble** | `toDouble() -> Double?`
**toFloat** | `toFloat() -> Float?`
**toUInt** | `toUInt() -> UInt?`
**toBool** | `toBool() -> Bool?`
**toDate** | `toDate(format: String?) -> NSDate?`
**toDateTime** | `toDateTime(format: String?) -> NSDate?`
**convertDateFormat** | `convertDateFormat(from: String, to: String) -> String`
**convertDateFormat** | `convertDateFormat(from: String, to: String, locale: String) -> String`

### Time (NSDate)

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
**toLocalTime** | `toLocalTime() -> NSDate`
**toGlobalTime** | `toGlobalTime() -> NSDate`
**getDateString** | `getDateString(format: String) -> String`
**getDateString** | `getDateString(format: String, locale: String) -> String`

## License

SwiftArmy is licensed under the MIT License. See the [LICENSE](https://github.com/apradanas/swift-army/blob/master/LICENSE) file for more information.