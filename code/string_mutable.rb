tortoise = 'Leonardo'
tortoise << ' is the best!'
p tortoise
# "Leonardo is the best!"

tortoise.freeze
tortoise << ' But Mich is better'
# can't modify frozen String (RuntimeError)
