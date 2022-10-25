import UIKit
//  Created by mustafa deveci on 25.10.2022.

func towerBreakers(n: Int, m: Int) -> Int {
    // Write your code here
    if (m == 1 || n%2 == 0) {
        return 2
    }else {
        return 1
    }
}

print(towerBreakers(n: 2, m: 2))
print(towerBreakers(n: 1, m: 4))

