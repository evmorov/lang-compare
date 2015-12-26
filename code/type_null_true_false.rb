hsh = {
  true_var: true,
  false_var: false,
  null_var: nil,
  zero_var: 0,
  empty_var: ''
}
hsh.each do |key, value|
  puts "#{key}:"
  puts 'True' if value
  puts 'False' unless value
  puts 'Null' if value.nil?
  puts 'Empty' if value.empty? rescue ''
  puts ''
end
# true_var:
# True
#
# false_var:
# False
#
# null_var:
# False
# Null
#
# zero_var:
# True
#
# empty_var:
# True
# Empty
