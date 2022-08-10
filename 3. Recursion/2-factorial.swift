func fact(_ value: Int) -> Int {
    value == 1 ? 1 : value * fact(value - 1)
}

print(fact(5))