// 04. Quicksort

// MARK: - loop sum
func loopSum(_ array: [Int]) -> Int {
    var total = 0
    for x in array {
        total += x
    }
    return total
}
print(loopSum([1, 2, 3, 4]))    // 10

// MARK: - recursive sum
func recursiveSum(_ array: [Int]) -> Int {
    guard let first = array.first else {
        return 0
    }
    var tempArray = array
    tempArray.removeFirst()
    return first + recursiveSum(tempArray)
}
print(recursiveSum([1, 2, 3, 4]))    // 10

func recursiveSum2(_ array: [Int]) -> Int {
    if array.isEmpty {
        return 0
    }
    var tempArray = array
    let first = tempArray.removeFirst()
    return first + recursiveSum(tempArray)
}
print(recursiveSum2([1, 2, 3, 4]))    // 10

// MARK: - recursive count
func recursiveCount(_ array: [Int]) -> Int {
    if array.isEmpty {
        return 0
    }
    var tempArray = array
    tempArray.removeFirst()
    return 1 + recursiveCount(tempArray)
}

recursiveCount([1, 2, 3, 4, 5])   // 5

// MARK: - quicksort
func quicksort<T: Comparable>(_ array: [T]) -> [T] {
    // base case: arrayes with 0 or 1 element are already "sorted"
    if array.count < 2 {
        return array
    } else {
        // recursive case
        let pivot = array[0]
        // sub-array of all the elements less than the pivot
        let less = array.filter { $0 < pivot }
        // sub-array of all the elements equal to the pivot
        let equal = array.filter { $0 == pivot }
        // sub-array of all the elements greater than  the pivot
        let greater = array.filter { $0 > pivot }
        return quicksort(less) + equal + quicksort(greater)
    }
}

print(quicksort([1, 5, 10, 25, 16, 1]))
