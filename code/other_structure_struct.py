import collections

class Customer(collections.namedtuple('Customer', 'name address')):
    def greeting(self):
        return "Hello %s!" % self.name

print(Customer('Dave', '123 Main').greeting())
