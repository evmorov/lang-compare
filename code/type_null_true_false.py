def check(label, fn, values):
    print(label)
    for value in values:
        try:
            result = 'true' if fn(value) else 'false'
        except TypeError as e:
            result = 'error: %s' % e
        print("  %-9r - %s" % (value, result))
    print()

values = ['string', '', [1, 2, 3], [], 5, 0, True, False, None]

check('if value:', lambda v: v, values)
check('if value is None:', lambda v: v is None, values)
check('if len(value):', lambda v: len(v), values)
