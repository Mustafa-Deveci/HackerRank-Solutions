import UIKit

//  Created by mustafa deveci on 23.10.2022.

func flippingMatrix(matrix: [[Int]]) -> Int {
    
    let matrixLength = matrix.count
    let topLeftMatrixLength = matrixLength/2
    var sum = 0

    /*
     matrixLength = 4
     
     [row][column]
     topleft   bottomleft    topright   bottomright
     [0][0] <-> [3][0]         [0][3] <-> [3][3]
     [1][0] <-> [2][0]         [1][3] <-> [2][3]
     [0][1] <-> [3][1]         [0][2] <-> [3][2]
     [1][1] <-> [2][1]         [1][2] <-> [2][2]
     */
    
    for row in 0..<topLeftMatrixLength
    {
        for coloumn in 0..<topLeftMatrixLength
        {
            let topLeftQuadrantPoint = matrix[row][coloumn]
            let bottomLeftQuadrantPoint = matrix[matrixLength - 1 - row][coloumn]
            let topRightQuadrantPoint = matrix[row][matrixLength - 1 - coloumn]
            let bottomRightQuadrantPoint = matrix[matrixLength - 1 - row][matrixLength - 1 - coloumn]
            
            var maximum = max(topLeftQuadrantPoint, bottomLeftQuadrantPoint)
            maximum = max(maximum, topRightQuadrantPoint)
            maximum = max(maximum, bottomRightQuadrantPoint)
            sum += maximum
            
        }
    }
    
    return sum
}

print(flippingMatrix(matrix: [[112,42,83,119],[56,125,56,49],[15,78,101,43],[62,98,114,108]]))

