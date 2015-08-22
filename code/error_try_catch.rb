begin
  1 / 0
rescue
  p "Can't divide"
end
# "Can't divide"

1 / 0 rescue p "Can't divide"
# "Can't divide"

begin
  1 / 0
rescue => e
  p e.message
end
# "divided by 0"
