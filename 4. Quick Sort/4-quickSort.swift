
func qsort(array: [Int]) -> [Int] {
  // basic
  if array.count < 2 { return array }
  
  // recursive
  let pivot = array[0]
  
  let less = array.filter { $0 < pivot }
  let equal = array.filter { $0 == pivot }
  let greater = array.filter { $0 > pivot }
  return qsort(array: less) + equal + qsort(array: greater)
}

let array: [Int] = [1, 5, 10, 25, 16, 1]

print(qsort(array: array))
