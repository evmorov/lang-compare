class Science
  include Math
  def self.pi?(number)
    PI.eql? number
  end
end
p Science.pi? 3.141592653589793
# true
