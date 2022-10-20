import UIKit

//  Created by mustafa deveci on 15.10.2022.

func miniMaxSum(arr: [Int]) -> Void {
    
    var sum = 0
    var max = arr [0]
    var min = arr [0]
    
    for i in arr {
        if i > max {
            max = i
        }
        if i < min {
            min = i
        }
        sum += i
    }
    print("\(sum - max) \(sum - min)")
}

miniMaxSum(arr:[5,3,1,4,2])

 
