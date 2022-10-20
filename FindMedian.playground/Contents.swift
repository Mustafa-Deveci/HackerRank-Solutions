import UIKit

// Created by mustafa deveci on 18.10.2022.

func findMedian(arr: [Int]) -> Int {
    
    let sorted = arr.sorted()
    let length = arr.count
    
    if (length % 2 == 0) {
        
        return ((sorted[length / 2 - 1]) + (sorted[length / 2])) / 2
        
    }
    
    return Int(sorted[length / 2])
    
}

print(findMedian(arr: [5,3,1,2,4]))
print(findMedian(arr: [0,1,2,3,4,5,6]))

