class Winner
  constructor: ->
    # @address = new Address

class Address
  zipcode: 192187

zip = (new Winner).address?.zipcode
console.log if zip then "Zipcode is #{zip}" else "No prize without zipcode"
