from unittest import main, TestCase

from Maximum import maximum

class unitTests(TestCase):
    def test1(self):
        self.assertEqual(maximum(3, 400, 23456), 23456)


if __name__ == "__main__":
    main()

