class Science
  include Math
  def self.pi?(number)
    PI == number
  end
end

p Science.pi? 3.141592653589793
# true
