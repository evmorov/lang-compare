require 'ruby-enum'

class Colors
  include Ruby::Enum
  define :RED, 'red'
  define :GREEN, 'green'
end
p Colors::RED
# "red"
p Colors.map { |key, enum| [enum.value, key] }
# [["red", :RED], ["green", :GREEN]]

module ColorsSimple
  RED = 'red'
  GREEN = 'green'
end
p ColorsSimple::RED
# "red"
