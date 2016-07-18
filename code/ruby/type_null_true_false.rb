def check(label, fn, values)
  puts label
  values.each do |value|
    begin
      result = fn.call(value) ? 'true' : 'false'
    rescue NoMethodError => e
      result = "error: #{e}"
    end
    puts format("  %-9p - %s", value, result)
  end
  puts ''
end

values = ['string', '', [1, 2, 3], [], 5, 0, true, false, nil]

check('if value:', -> (v) { v }, values)
check('if value.nil?:', -> (v) { v.nil? }, values)
check('if value.empty?:', -> (v) { v.empty? }, values)
