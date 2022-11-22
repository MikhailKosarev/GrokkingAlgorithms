// 02. Selection sort

func findSmallest<T: Comparable>(input: [T]) -> Int {
    var smallestValue = input[0]
    var smallestIndex = 0
    for (index, value) in input.enumerated() {
        if value < smallestValue {
            smallestValue = value
            smallestIndex = index
        }
    }
    return smallestIndex
}

func selectionSort<T: Comparable>(input: inout [T]) -> [T] {
    var sortedArray = [T]()
    for _ in 0..<input.count {
        let smallestIndex = findSmallest(input: input)
        sortedArray.append(input.remove(at: smallestIndex))
    }
    return sortedArray
}

var array = [5, 3, 7, 5, 6, 1, 3, 10, 0, 23, 2, 3, 5, 7, 8]
selectionSort(input: &array)
