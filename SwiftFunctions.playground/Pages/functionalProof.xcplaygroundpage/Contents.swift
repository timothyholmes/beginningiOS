
func pipe(fxs :[(Int) -> Int]) {
    let result = fxs[0](1)
    return result
}

pipe(func add(a Int, b Int) -> Int {})
