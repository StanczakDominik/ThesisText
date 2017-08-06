def f(x):
    return 3*x


def test_passing():
    assert f(4) == 12


def test_failing():
    assert f(4) == 13
