fn main() {
    let _a = Foo::A::<u8>(1, 2);
    let _b: Foo<u16> = Foo::B(3);
    let _c = Foo::C(4);

    let _d: fn() -> Foo<(i32, i32)> = Foo::D;
    let _d: Foo<(i32, i32)> = Foo::D();
    let _e: Foo<u16> = Foo::E;
    let _e: Foo<u32> = Foo::E; // Ensure we can still use Foo::E polymorphically

    // Enum variants are functions and can be passed around as such
    let _many_cs = [1, 2, 3].map(Foo::C);
}

enum Foo<T> {
    A(Field, Field),
    B(u32),
    C(T),
    D(),
    E,
}
