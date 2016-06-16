def my_select(arr):
    yield from arr

print([x for x in my_select([1, 5, 10]) if x < 6])


def my_select(arr, filter):
    for a in arr:
        if filter(a):
            yield a

print(list(my_select([1, 5, 10], lambda x: x < 6)))
