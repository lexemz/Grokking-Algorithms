let value = 3

func cutdown(_ i: Int) {
    // base case
    guard i > 0 else { return }
    print(i)

    // resursive case
    cutdown(i - 1)
}

cutdown(value)
