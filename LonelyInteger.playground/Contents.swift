import UIKit


func lonelyinteger(a: [Int]) -> Int {
    var unique = a[0]
    var dct = [Int: Int]()
    for x in a {
        dct.updateValue((dct[x] ?? 0) + 1, forKey: x)
        
    }
    if dct.count == 1 {
        return unique }
    for (key, value) in dct {
        if value == 1 {
            unique = key
            break
        }
    }
    return unique
}

print(lonelyinteger(a:[1,2,3,4,5,2,3,4,5]))
