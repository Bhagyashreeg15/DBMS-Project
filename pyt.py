import pytest

def add(a,b):
    return a+b
def test_addition():
    result=add(3,4)
    assert result==6
