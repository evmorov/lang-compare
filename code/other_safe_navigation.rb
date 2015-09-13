class Winner
  attr_reader :address
  def initialize
    # @address = Address.new
  end
end

class Address
  attr_reader :zipcode
  def initialize
    @zipcode = 193178
  end
end

address = Winner.new.address
zip = address.zipcode if address
p "We can't send the prize to a winner" unless zip
# "We can't send the prize to a winner"
