import Foundation

// Найти наименьший элемент массива O(N)
func findSmallest(array: [Int]) -> Int {
  var smallest = array[0]
  var smallestIndex = 0

  for (index, element) in array.enumerated() {
    if element < smallest {
      smallest = element
      smallestIndex = index
    }
  }
  return smallestIndex
}

// Проходим по массиву и создаем новый O(N)
func selectionSort(array: [Int]) -> [Int] {
  guard array.count > 1 else { return array }
  var array = array
  var newArray: [Int] = []

  for _ in 0 ..< array.count {
    let smallestIndex = findSmallest(array: array)
    newArray.append(array.remove(at: smallestIndex))
  }
  return newArray
}

// O(N^2)
selectionSort(array: [5, 6, 2, 1, 9, 2, 2])
selectionSort(array: [1, 1, 1, 1])
selectionSort(array: [2])
