def if_value(values):
  print('"if value":')
  for k, v in values:
    print("%s - %s" % (k, 'true' if v else 'false'))
  print()

def nil_value(values):
  print('"if value is None":')
  for k, v in values:
    print("%s - %s" % (k, 'true' if v is None else 'false'))
  print()

def empty_value(values):
  print('"if len(value)":')
  for k, v in values:
    try:
        print("%s - %s" % (k, 'true' if len(v) else 'false'))
    except TypeError as e:
        print("%s - %s" % (k, e))

values = [
  ("'string'", 'string'),
  ("''", ''),
  ('[1, 2, 3]', [1, 2, 3]),
  ('[]', []),
  ('5', 5),
  ('0', 0),
  (True, True),
  (False, False),
  (None, None),
]

if_value(values)
nil_value(values)
empty_value(values)
