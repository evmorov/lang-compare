score = 76
grades = [
    (60, 'F'),
    (70, 'D'),
    (80, 'C'),
    (90, 'B'),
]
print(next((g for x, g in grades if score < x), 'A'))
