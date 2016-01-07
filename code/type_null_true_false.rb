values = {
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

def if_value(values)
  puts 'if value:'
  values.each { |k, v| puts "#{k} - #{v ? 'true' : 'false'}" }
end

def nil_value(values)
  puts 'if value.nil?'
  values.each { |k, v| puts "#{k} - #{v.nil? ? 'true' : 'false'}" }
end

def empty_value(values)
  puts 'if value.empty?'
  values.each do |k, v|
    puts "#{k} - #{v.empty? ? 'true' : 'false'}" if v.respond_to? :empty?
  end
end

if_value(values)
puts ''
nil_value(values)
puts ''
empty_value(values)

# if value:
# string_var - true
# arr_var - true
# num_var - true
# true_var - true
# false_var - false
# null_var - false
# zero_var - true
# empty_var - true
# empty_arr - true
#
# if value.nil?
# string_var - false
# arr_var - false
# num_var - false
# true_var - false
# false_var - false
# null_var - true
# zero_var - false
# empty_var - false
# empty_arr - false
#
# if value.empty?
# string_var - false
# arr_var - false
# empty_var - true
# empty_arr - true
