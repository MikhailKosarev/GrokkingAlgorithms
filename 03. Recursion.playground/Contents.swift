// countdown with recursion
func countdown(_ i: Int) {
    print(i)
    // base case
    if i <= 1 {
        return
    // recursive case
    } else {
        countdown(i - 1)
    }
}
countdown(5)

// greet functions with stack
func greet(_ name: String) {
    print("hello, " + name + "!")
    greet2(name)
    print("getting ready to say bye...")
    bye()
}

func greet2(_ name: String) {
    print("how are you, " + name + "?")
}

func bye() {
    print("ok, bye!")
}

greet("maggie")


// factorial functions with recursion
func fact(_ x: Int) -> Int {
    if x == 1 {
        return 1
    } else {
        return x * fact(x - 1)
    }
}

let factorialOfFive = fact(5)   // 120
