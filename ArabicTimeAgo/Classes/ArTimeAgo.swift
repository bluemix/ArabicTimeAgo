//
//  ArTimeAgo.swift
//
//
//  Created by blueMix on 1/19/17.
//
//

import UIKit

public class TimeAgo {

  enum Times: String {
    case about, now
    case second, twoSeconds, seconds
    case minute, twoMinutes, minutes
    case hour, twoHours, hours
    case dayAgo, day, twoDays, days
    case week, twoWeeks, weeks
    case month, twoMonths, months
    case yearAgo, year, twoYears, years


    func str(isAr: Bool) -> String {
      switch self {
      case .about: return isAr ? "قبل" : "ago"
      case .now: return isAr ? "الآن" : "now"

      case .second: return isAr ? "ثانية" : "second"
      case .twoSeconds: return isAr ? "ثانيتين" : "seconds"
      case .seconds: return isAr ? "ثواني" : "seconds"

      case .minute: return isAr ? "دقيقة" : "minute"
      case .twoMinutes: return isAr ? "دقيقتين" : "minutes"
      case .minutes: return isAr ? "دقائق" : "minutes"

      case .hour: return isAr ? "ساعة" : "hour"
      case .twoHours: return isAr ? "ساعتين" : "hours"
      case .hours: return isAr ? "ساعات" : "hours"

      case .dayAgo: return isAr ? "البارحة" : "a day"
      case .day: return isAr ? "يوم" : "day"
      case .twoDays: return isAr ? "يومين" : "days"
      case .days: return isAr ? "أيام" : "days"

      case .week: return isAr ? "إسبوع" : "week"
      case .twoWeeks: return isAr ? "إسبوعين" : "weeks"
      case .weeks: return isAr ? "أسابيع" : "weeks"

      case .month: return isAr ? "شهر" : "month"
      case .twoMonths: return isAr ? "شهرين" : "months"
      case .months: return isAr ? "أشهر" : "months"

      case .yearAgo: return isAr ? "العام" : "a year"
      case .year: return isAr ? "سنة" : "year"
      case .twoYears: return isAr ? "سنتين" : "years"
      case .years: return isAr ? "سنوات" : "years"
      }
      return ""
    }

  }


  private static func orderDirection(isAr: Bool = true, period: Int, time: String) -> String {
    let timeStr = ((period == 1 || period == 2) && isAr ? "": "\(period) ") +  time

    if isAr {
      return Times.about.str(isAr: isAr) + " " + timeStr
    } else {
      return timeStr + " " + Times.about.str(isAr: isAr)
    }
  }


  private static func explainTime(isAr: Bool,
                           period: Int,
                           agoDesc: String = "",
                           singleDesc: String,
                           twoDesc: String,
                           manyDesc: String) -> String {

    if period == 1 && agoDesc != "" {
      return isAr ? agoDesc : agoDesc + " " + Times.about.str(isAr: isAr)
    }

    else if period > 2 && period < 11 { return orderDirection(isAr: isAr, period: period, time: manyDesc) }
    else if period == 2 { return orderDirection(isAr: isAr, period: period, time: twoDesc) }
    else if period == 1 { return orderDirection(isAr: isAr, period: period, time: singleDesc) }
    return orderDirection(isAr: isAr, period: period, time: isAr ? singleDesc : manyDesc)
  }

  public static func calculate(date: Date, isAr: Bool = true) -> String {

    var calendar: Calendar { return .current }
    var components: DateComponents {

      let unitFlags = Set<Calendar.Component>([.second,.minute,.hour,.day,.weekOfYear,.month,.year])
      let now = Date()
      return calendar.dateComponents(unitFlags, from: date, to: now)
    }

    // year
    if let year = components.year, year > 0 {
      return explainTime(isAr: isAr,
                         period: year,
                         agoDesc: Times.yearAgo.str(isAr: isAr),
                         singleDesc: Times.year.str(isAr: isAr),
                         twoDesc: Times.twoYears.str(isAr: isAr),
                         manyDesc: Times.years.str(isAr: isAr))
    }

    // month
    if let month = components.month, month > 0 {
      return explainTime(isAr: isAr,
                         period: month,
                         singleDesc: Times.month.str(isAr: isAr),
                         twoDesc: Times.twoMonths.str(isAr: isAr),
                         manyDesc: Times.months.str(isAr: isAr))
    }

    // week
    if let week = components.weekOfYear, week > 0 {
      return explainTime(isAr: isAr,
                         period: week,
                         singleDesc: Times.week.str(isAr: isAr),
                         twoDesc: Times.twoWeeks.str(isAr: isAr),
                         manyDesc: Times.weeks.str(isAr: isAr))
    }

    // day
    if let day = components.day, day > 0 {
      return explainTime(isAr: isAr,
                         period: day,
                         agoDesc: Times.dayAgo.str(isAr: isAr),
                         singleDesc: Times.day.str(isAr: isAr),
                         twoDesc: Times.twoDays.str(isAr: isAr),
                         manyDesc: Times.days.str(isAr: isAr))
    }

    // hour
    if let hour = components.hour, hour > 0 {
      return explainTime(isAr: isAr,
                         period: hour,
                         singleDesc: Times.hour.str(isAr: isAr),
                         twoDesc: Times.twoHours.str(isAr: isAr),
                         manyDesc: Times.hours.str(isAr: isAr))
    }

    // minute
    if let minute = components.minute, minute > 0 {
      return explainTime(isAr: isAr,
                         period: minute,
                         singleDesc: Times.minute.str(isAr: isAr),
                         twoDesc: Times.twoMinutes.str(isAr: isAr),
                         manyDesc: Times.minutes.str(isAr: isAr))
    }

    // second
    if let second = components.second, second > 0 {
      explainTime(isAr: isAr,
                  period: second,
                  singleDesc: Times.second.str(isAr: isAr),
                  twoDesc: Times.twoSeconds.str(isAr: isAr),
                  manyDesc: Times.seconds.str(isAr: isAr))
    }


    return Times.now.str(isAr: isAr)
  }

}

//let itemDateStr = "2017-01-19 09:12:07"
//let formatter = DateFormatter()
//formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//
//if let date = formatter.date(from: itemDateStr) {
//
//  print(TimeAgo.calculate(date: date, isAr: false))
//}
