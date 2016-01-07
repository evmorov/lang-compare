def if_value(values)
  puts '"if value":'
  values.each { |k, v| puts "#{k} - #{v ? 'true' : 'false'}" }
  puts ''
end

def nil_value(values)
  puts '"if value.nil?":'
  values.each { |k, v| puts "#{k} - #{v.nil? ? 'true' : 'false'}" }
  puts ''
end

def empty_value(values)
  puts '"if value.empty?":'
  values.each do |k, v|
    puts "#{k} - #{v.empty? ? 'true' : 'false'}" if v.respond_to? :empty?
  end
end

values = {
  "'string'": 'string',
  "''": '',
  '[1, 2, 3]': [1, 2, 3],
  '[]': [],
  '5': 5,
  '0': 0,
  true: true,
  false: false,
  nil: nil
}

if_value(values)
nil_value(values)
empty_value(values)

# "if value":
# 'string' - true
# '' - true
# [1, 2, 3] - true
# [] - true
# 5 - true
# 0 - true
# true - true
# false - false
# nil - false
#
# "if value.nil?":
# 'string' - false
# '' - false
# [1, 2, 3] - false
# [] - false
# 5 - false
# 0 - false
# true - false
# false - false
# nil - true
#
# "if value.empty?":
# 'string' - false
# '' - true
# [1, 2, 3] - false
# [] - true
