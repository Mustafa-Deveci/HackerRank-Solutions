import UIKit

 //  Created by mustafa deveci on 20.10.2022.
 
func diagonalDifference(arr: [[Int]]) -> Int {
     var leftToRight = 0
     var rightToLeft = 0
     var c = arr.count

     for i in 0 ..< c {
         leftToRight += arr[i][i]
         rightToLeft += arr[i][c - i - 1]
     }

     return abs(leftToRight - rightToLeft)
 }

 print(diagonalDifference(arr:[[11,2,4],[4,5,6],[10,8,-12]]))
