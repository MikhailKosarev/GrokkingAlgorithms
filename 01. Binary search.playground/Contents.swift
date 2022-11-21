// 01. Binary search

func binarySearch<T: Comparable>(list: [T], item: T) -> Int? {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        let guess = list[mid]
        if guess == item {
            return mid
        }
        if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return nil
}

let myList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let myItem = 11
binarySearch(list: myList, item: myItem)
