func recursiveCount(array: [Int]) -> Int {
  // Basic
  if array.count == 0 { return 0 }

  // Recursive
  var array = array
  array.removeFirst()
  return 1 + recursiveCount(array: array)
}

print(recursiveCount(array: [0, 0, 0, 0, 0]))
