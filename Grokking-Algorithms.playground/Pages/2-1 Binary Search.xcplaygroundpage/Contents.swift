
import Foundation

func binarySearch(array: [Int], searchElement: Int) -> Int? {
  var low = 0
  var high = array.count - 1

  while low <= high {
    let mid = (low + high) / 2
    let guess = array[mid]

    if guess == searchElement {
      return mid
    }
    if guess > searchElement {
      high = mid - 1
    } else {
      low = mid + 1
    }
  }

  return nil
}

let myArray = [1, 3, 5, 7, 9]

binarySearch(array: myArray, searchElement: 3)
binarySearch(array: myArray, searchElement: -1)
