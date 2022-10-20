import UIKit

//  Created by mustafa deveci on 15.10.2022.

func plusMinus(arr: [Int]) -> Void {
      let arrCount = arr.count
    
    var positiveCount = 0
    var negativeCount = 0
    var zeroCount = 0
     
    for i in 0 ..< arrCount {
        if arr[i] < 0 {
            negativeCount+=1
        } else if arr[i] > 0 {
            positiveCount+=1
        }else {
            zeroCount+=1
        }
    }
    
    let positiveRate = Double(positiveCount) / Double(arrCount)
    let negativeRate = Double(negativeCount) / Double(arrCount)
    let zeroRate = Double(zeroCount) / Double(arrCount)
    
    print(String(format: "%f",positiveRate))
    print(String(format: "%f",negativeRate))
    print(String(format: "%f",zeroRate))
    
}

plusMinus(arr: [1,1,0,-1,-1])

