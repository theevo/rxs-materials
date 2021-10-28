import UIKit

// synchronous

var array = [1, 2, 3]
for number in array {
    print(number)
//    array.remove(at: 0)
//    array.append(0)
    array = [4, 5, 6] // array is not mutable until the end of the loop
}

print(array)
