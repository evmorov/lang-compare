class Greetings
  def hey
    p 'How are you?'
  end
  alias_method :hi, :hey
end

Greetings.new.hi
# "How are you?"
