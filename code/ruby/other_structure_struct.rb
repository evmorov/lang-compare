Customer = Struct.new(:name, :address) do
  def greeting
    "Hello #{name}!"
  end
end
puts Customer.new('Dave', '123 Main').greeting

