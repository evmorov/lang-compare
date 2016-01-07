hsh = {
  string_var: 'str',
  arr_var: [1, 2, 3],
  num_var: 5,
  true_var: true,
  false_var: false,
  null_var: nil,
  zero_var: 0,
  empty_var: '',
  empty_arr: []
}
hsh.each do |key, value|
  puts "#{key}:"
  puts 'if value' if value
  puts 'if value.nil?' if value.nil?
  puts 'if value.empty?' if value.empty? rescue ''
  puts ''
end

# string_var:
# if value
#
# arr_var:
# if value
#
# num_var:
# if value
#
# true_var:
# if value
#
# false_var:
#
# null_var:
# if value.nil?
#
# zero_var:
# if value
#
# empty_var:
# if value
# if value.empty?
#
# empty_arr:
# if value
# if value.empty?
