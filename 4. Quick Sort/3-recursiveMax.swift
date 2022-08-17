func recursiveMax(array: [Int]) -> Int? {
  // Basic
  if array.count == 0 { return nil }
  if array.count == 1 { return array.first }
  
  // Recursive
  var array = array
  let firstValue = array.removeFirst()
  let nextMax = recursiveMax(array: array)!
  return firstValue > nextMax ? firstValue : nextMax
//  return max(firstValue, nextMax)
}


let array: [Int] = [1, 5, 10, 25, 16, 1]
let array2: [Int] = [1, 5]
let array3: [Int] = [1]
let array4: [Int] = []

print(recursiveMax(array: array))
print(recursiveMax(array: array2))
print(recursiveMax(array: array3))
print(recursiveMax(array: array4))
