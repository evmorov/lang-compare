begin
  fail 'An error!'
rescue => e
  p e.message
end
# "An error!"
