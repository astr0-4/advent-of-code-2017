//import Foundation
//
////
//// get the dimensions of the array based on the square root rounded up
//// i.e. round up sqrt(265149) and that tells you length and height
//// then figure out where the middle is based on the dimensions
//// then construct the 2D array
//// go to the spot in the array that contains your input
//// work your way up to the middle from there, counting as you go
////
//class Day3 {
//    func arrayDimensions(input: Double) -> Int {
//        return Int(sqrt(input)) + 1
//    }
//
//    func centerCoordinatesForDimension() -> Int {
//        let length = arrayDimensions(input: 265149)
//        let center = Int(length/2)
//        return center
//    }
//
//    func generateArray() {
//        var grid = Array(repeating: Array(repeating: 0, count: centerCoordinatesForDimension()), count: centerCoordinatesForDimension())
//        grid[centerCoordinatesForDimension()][centerCoordinatesForDimension()] = 1
//
//    }
//
////    centerCoordinatesForDimension()
////    print(arrayDimensions(input: 265149))
//
//
//    //var matrix = [[1]]
//    ////R
//    //matrix[0].append(2)
//    //
//    ////U
//    //matrix.append([3])
//    //
//    ////L
//    //matrix[1].append(4)
//    //matrix[1].append(5)
//    //
//    //// D
//    //matrix[0].insert(6, at: 0)
//    //matrix[1].insert(7, at: 0)
//    //matrix.insert([8], at:0)
//    //
//    //// R
//    //matrix[0].append(8)
//    //matrix[0].append(9)
//    //matrix[0].append(10)
//    //print(matrix)
//
////    var matrix = Array(repeating: Array(repeating: 0, count: 15), count: 15)
//
//    enum Direction {
//        case right(x: Int, y: Int)
//        case left(x: Int, y: Int)
//        case up(x: Int, y: Int)
//        case down(x: Int, y: Int)
//
//        //    func move(direction: Direction) -> (x: Int, y: Int){
//        //        switch self {
//        //        case .down(let x, let y):
//        //            return (x: x + 1, y: y)
//        //
//        //        default:
//        //
//        //        }
//        //    }
//    }
//
//    func createSpiralMatrix() {
//        var value = 1
//        var i = 0
//        let center = (x: matrix.count / 2, y: matrix.count/2)
//        matrix[center.x][center.y] = 1
//
//        while(i < 4) {
//            // R
//            matrix[center.x + i][center.y + i + value] = value + 1
//            // U
//            matrix[center.x + i - value][center.y + i + value] = value + 2
//            // L
//            matrix[center.x - i - value][center.y + i] = value + 3
//            matrix[center.x - i - value][center.y + i - value] = value + 4
//            // D
//            matrix[center.x + i][center.y + i - value] = value + 5
//            matrix[center.x + i + value][center.y + i - value] = value + 6
//
//            value += 1
//            i += 1
//        }
//    }
//
////    createSpiralMatrix()
////
////    for row in matrix {
////    print(row)
////    }
//
//}

