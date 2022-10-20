import UIKit
//  Created by mustafa deveci on 15.10.2022.
/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func timeConversion(s: String) -> String {
    let hours12Formatter = DateFormatter()
    hours12Formatter.dateFormat = "hh:mm:ssa"
    
    let date = hours12Formatter.date(from: s)!
    let hours24Formatter = DateFormatter()
    hours24Formatter.dateFormat = "HH:mm:ss"
    
    let dateString = hours24Formatter.string(from: date)
    return dateString
    
}

let convertedTime = timeConversion(s: "07:05:45PM")

if convertedTime == "19:05:45" {
    print(true)
} else {
    print(false)
    
}



