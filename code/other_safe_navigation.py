class Winner:
  def __init__(self):
    # self.address = Address()
    pass

class Address:
  zipcode =  192187

try:
  zip = Winner().address.zipcode
except AttributeError:
  print("We can't send the prize to a winner")
