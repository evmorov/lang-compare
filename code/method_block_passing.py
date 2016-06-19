def select(arr):
    yield from arr

def select_filter(arr, filter):
    for a in arr:
        if filter(a):
            yield a

print([x for x in select([1, 5, 10]) if x < 6])
print(list(select_filter([1, 5, 10], lambda x: x < 6)))
