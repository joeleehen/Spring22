from my_zip import my_zip

def test_zip():
    print("my_zip()")
    assert list(my_zip()) == []
    assert list(my_zip([])) == []
    assert list(my_zip((), ())) == []
    assert list(my_zip([2, 3])) == [(2,), (3,)]
    assert list(my_zip((2, 3), (4, 5), (6, 7))) == [(2, 4, 6), (3, 5, 7)]
    assert list(my_zip([2, 3, 4], [5, 6, 7])) == [(2, 5), (3, 6), (4, 7)]
    assert list(my_zip(iter([2, 3, 4]), iter([5, 6, 7]))) == [(2, 5), (3, 6), (4, 7)]


test_zip()
