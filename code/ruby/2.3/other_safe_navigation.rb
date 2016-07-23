class Winner
  attr_reader :address

  def initialize
    # @address = Address.new
  end
end

class Address
  attr_reader :zipcode

  def initialize
    @zipcode = 192187
  end
end

zip = Winner.new.address&.zipcode
puts zip ? "Zipcode is #{zip}" : "No prize without zipcode"
