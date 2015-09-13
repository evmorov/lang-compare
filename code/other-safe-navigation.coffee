class Winner
  constructor: ->
    # @address = new Address

class Address
  zipcode: 192187

zip = (new Winner).address?.zipcode
console.log "We can't send the prize to a winner" unless zip
# We can't send the prize to a winner
