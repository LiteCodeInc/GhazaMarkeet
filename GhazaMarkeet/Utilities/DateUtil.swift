//
//  DateUtil.swift
//
//  Created by Mehtab on 12/31/18.
//  Copyright © 2018 Mehtab. All rights reserved.
//

import Foundation

enum TimeZones: String {
    case UTC = "UTC"
    case CURRENT = "current"
    case EST = "EST"
}

enum Region: String {
    case US
    case LOCAL
}

enum DateFormate : String {
    case yyyy_MM_dd_T_HH_mm_ss_Z = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSZ"
    case yyyy_MM_dd = "yyyy-MM-dd"
    case yyyy_MM_dd_HH_mm_ss = "yyyy-MM-dd HH:mm:ss"
    case yyyy_MM_dd_HH_mm_ss_Z = "yyyy-MM-dd HH:mm:ss Z"
    case yyyy_MM_dd_T_HH_mm_ss = "yyyy-MM-dd'T'HH:mm:ss"
    case yyyy_MM_dd_HH_mm = "yyyy-MM-dd HH:mm"
    case yyyy_MM_dd_hh_mm_a = "yyyy-MM-dd hh:mm a"
    case yyyy_MM_dd_hh_mm_ss_a = "yyyy-MM-dd hh:mm:ss a"
    case E_dd_MMM_yyyy_HH_mm_ss_Z = "E, dd MMM yyyy HH:mm:ss Z"
    case E_dd_MMM_yyyy_HH_mm_ss = "E, dd MMM yyyy HH:mm:ss"
    case EEEE_MMM_yyyy_h_mm_a = "EEEE, MMM yyyy, h:mm a"
    case EEEE_dd_MMM_yyyy = "EEEE,dd MMM yyyy"
    case dd_MMM_hh_mm_a = "dd MMM hh:mm a"
    case E_hh_mm_a = "E, hh:mm a"
    case hh_mm_a = "hh:mm a"
    case hh_mm_ss_a = "hh:mm:ss a"
    case HH_mm = "HH:mm"
    case HH_mm_ss = "HH:mm:ss"
    case dd_MMM_yyyy = "dd MMM yyyy"
    case dd_MM_yyyy = "dd-MM-yyyy"
    case MMM_yyyy = "MMM yyyy"
    case dd_MMM_yyyy_hh_mm_a = "dd MMM yyyy hh:mm a"
    case MMM_dd_yyyy = "MMM dd, yyyy"
    case MMM_dd_yyyy_h_mm_a = "MMM dd, yyyy h:mm a"
    case MMM_dd_h_mm_a = "MMM dd h:mm a"
    case EEEE = "EEEE"
    case EEE = "EEE"
    case k_mm = "k:mm"
    case yyyy = "yyyy"
    case dd_MMM_yyyy_hh_mm = "dd MMM yyyy hh:mm"
    case dd_MMM_yyyy_HH_mm = "dd MMM yyyy HH:mm"
    case EEEE_dd_MMM_hh_mm = "EEEE, dd MMM, HH:mm"
    
    
}

class DateUtil
{
    let dateFormatter:DateFormatter!
    
    init() {
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat  = DateFormate.yyyy_MM_dd.rawValue
        dateFormatter.timeZone = TimeZone(identifier: TimeZone.current.identifier)!
   //     dateFormatter.locale = Locale(identifier: "en_US_POSIX")
    }
    
    init(timeZone: TimeZones) {
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat  = DateFormate.yyyy_MM_dd.rawValue
        dateFormatter.timeZone = timeZone == .CURRENT ? TimeZone(identifier: TimeZone.current.identifier)!: TimeZone(identifier: timeZone.rawValue)
   //     dateFormatter.locale = Locale(identifier: "en_US_POSIX")
    }
    
    init(timeZone: TimeZone) {
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat  = DateFormate.yyyy_MM_dd.rawValue
        dateFormatter.timeZone = timeZone
      //  dateFormatter.locale = Locale(identifier: "en_US_POSIX")
    }

    
    public func dateToString(date:Date, reqDF:DateFormate, region: Region = .US) -> String
    {
        if region == .US {
            dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        }
        else {
            dateFormatter.locale = Locale(identifier: getPreferredLocale().languageCode ?? "en")
        }
        dateFormatter.dateFormat = reqDF.rawValue
        return dateFormatter.string(from: date)
    }
    
    public func stringToDate(date:String, sourceDF:DateFormate, alternateDF:DateFormate? = nil, region:Region = .US) -> Date?
    {
        
        if region == .US {
            dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        }
        else {
            dateFormatter.locale = Locale(identifier: getPreferredLocale().languageCode ?? "en")
        }
        
        dateFormatter.dateFormat = sourceDF.rawValue
        if dateFormatter.date(from: date) != nil
        {
            return dateFormatter.date(from: date)
        }
        
        if alternateDF != nil
        {
            dateFormatter.dateFormat = alternateDF!.rawValue
            return dateFormatter.date(from: date)
        }
        
        return dateFormatter.date(from: date)
    }
    
    // To convert date string into new date string with new formater
    public func stringDateToStrigDate(date:String, sourceDF:DateFormate, reqDF:DateFormate, region:Region = .US) -> String?
    {
        if region == .US {
           dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        }
        else {
           dateFormatter.locale = Locale(identifier: getPreferredLocale().languageCode ?? "en")
        }
        dateFormatter.dateFormat = sourceDF.rawValue
        let defaultDate = dateFormatter.date(from: date)
        
        if defaultDate == nil
        {
            return nil
        }
       dateFormatter.dateFormat = reqDF.rawValue
        return dateFormatter.string(from: defaultDate!)
    }
    
    func toLocalDate(date:Date) -> Date
    {
        let timezone = TimeZone.current
        let seconds = TimeInterval(timezone.secondsFromGMT(for: date))
        return Date(timeInterval: seconds, since: date)
    }
    
    func is24Hour() -> Bool {
        let dateFormat = DateFormatter.dateFormat(fromTemplate: "j", options: 0, locale: Locale.current)!
        return dateFormat.index(of: "a") == nil
    }
    
    func getCurrentUTCdate() -> Date
    {
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone(identifier: "UTC")
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let stringDate = formatter.string(from: Date())
        print("Current time: "+stringDate)
        let date = formatter.date(from: stringDate)
        return date!
    }
    
    func getCurrentStringdate() -> String
    {
       
        let stringDate = DateUtil().dateToString(date: DateUtil().getCurrentUTCdate(), reqDF: .yyyy_MM_dd_HH_mm_ss_Z)
        
        return stringDate
    }
    
    func getDifferenceInTZs(oldTimeZone:String, newTimeZone:String) -> TimeInterval
    {
        let oldTZ = TimeZone(identifier: oldTimeZone) ?? TimeZone.current
        let oldSeconds = TimeInterval(oldTZ.secondsFromGMT(for: Date()))
        
        let newTZ = TimeZone(identifier: newTimeZone) ?? TimeZone.current
        let newSeconds = TimeInterval(newTZ.secondsFromGMT(for: Date()))
        
        return oldSeconds - newSeconds
    }
    
    func getUpdatedDate(diffInSecond: TimeInterval, date: Date, lastTimeZone: String) -> Date {
        let lastTZ = NSTimeZone(name: lastTimeZone)
        let currentTZ = NSTimeZone.local
        
        var updatedDate = (Calendar.current as NSCalendar).date(byAdding: .second, value: Int(diffInSecond), to: date, options: [])!
        
        if lastTZ!.isDaylightSavingTime && !currentTZ.isDaylightSavingTime() {
            updatedDate = (Calendar.current as NSCalendar).date(byAdding: .hour, value: -1, to: updatedDate, options: [])!
        }
        
        if !lastTZ!.isDaylightSavingTime && currentTZ.isDaylightSavingTime() {
            updatedDate = (Calendar.current as NSCalendar).date(byAdding: .hour, value: 1, to: updatedDate, options: [])!
        }
 
        return updatedDate
    }
    
    func addSeconds(date:Date, seconds:Int) -> Date
    {
        var DSTFlag = false
        let tz = NSTimeZone.local
        if tz.isDaylightSavingTime(for: date) {
            DSTFlag = true
        }
        
        var updatedDate = (Calendar.current as NSCalendar).date(byAdding: .second, value: seconds, to: date, options: [])!
        
        if DSTFlag
        {
            if !tz.isDaylightSavingTime(for: updatedDate) {
                updatedDate = (Calendar.current as NSCalendar).date(byAdding: .hour, value: 1, to: updatedDate, options: [])!
            }
        }
        else
        {
            if tz.isDaylightSavingTime(for: updatedDate) {
                updatedDate = (Calendar.current as NSCalendar).date(byAdding: .hour, value: -1, to: updatedDate, options: [])!
            }
        }
        
        return updatedDate
    }
    
    func addMonths(date:Date, months:Int) -> Date
    {
        var DSTFlag = false
        let tz = NSTimeZone.local
        if tz.isDaylightSavingTime(for: date) {
            DSTFlag = true
        }
        
        var updatedDate = (Calendar.current as NSCalendar).date(byAdding: .month, value: months, to: date, options: [])!
        
        if DSTFlag
        {
            if !tz.isDaylightSavingTime(for: updatedDate) {
                updatedDate = (Calendar.current as NSCalendar).date(byAdding: .hour, value: 1, to: updatedDate, options: [])!
            }
        }
        else
        {
            if tz.isDaylightSavingTime(for: updatedDate) {
                updatedDate = (Calendar.current as NSCalendar).date(byAdding: .hour, value: -1, to: updatedDate, options: [])!
            }
        }
        
        return updatedDate
    }
    
    func addDays(date:Date, day:Int) -> Date
    {
        var DSTFlag = false
        let tz = NSTimeZone.local
        if tz.isDaylightSavingTime(for: date) {
            DSTFlag = true
        }
        
        var updatedDate = (Calendar.current as NSCalendar).date(byAdding: .day, value: day, to: date, options: [])!
        
        if DSTFlag
        {
            if !tz.isDaylightSavingTime(for: updatedDate) {
                updatedDate = (Calendar.current as NSCalendar).date(byAdding: .hour, value: 1, to: updatedDate, options: [])!
            }
        }
        else
        {
            if tz.isDaylightSavingTime(for: updatedDate) {
                updatedDate = (Calendar.current as NSCalendar).date(byAdding: .hour, value: -1, to: updatedDate, options: [])!
            }
        }
        
        return updatedDate
    }
    
    func daysBetween(start: Date, end: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: start, to: end).day!
    }
    
    func secondsBetween(start: Date, end: Date) -> Double {
        let startSeconds = ((start.timeIntervalSince1970 * 1000.0).rounded() / 1000)
        let endSeconds = ((end.timeIntervalSince1970 * 1000.0).rounded() / 1000)
        return endSeconds - startSeconds
    }
    
    func timeConversion12(time24: String) -> String {
        let dateAsString = time24
        let df = DateFormatter()
        df.dateFormat = "HH:mm:ss"
        
        let date = df.date(from: dateAsString)
        df.dateFormat = "hh:mm:ssa"
        
        let time12 = df.string(from: date!)
        print(time12)
        return time12
    }
}

func getPreferredLocale() -> Locale {
    guard let preferredIdentifier = Locale.preferredLanguages.first else {
        return Locale.current
    }
    return Locale(identifier: preferredIdentifier)
}
