func recursiveSum(array: [Int]) -> Int {
  // Basic
  if array.count == 0 { return 0 }

  // Recursive
  var array = array
  return array.removeFirst() + recursiveSum(array: array)
}

print(recursiveSum(array: [1, 2, 3, 4]))
