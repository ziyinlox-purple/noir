fn main() {
    // Expecting error: type annotations needed (N not known)
    let _ = slice_to_array(&[1, 2, 3]);
}

fn slice_to_array<N>(slice: [Field]) -> [Field; N] {
    let mut array = [0; N];
    for i in 0 .. N {
        array[i] = slice[i];
    }
    array
}
