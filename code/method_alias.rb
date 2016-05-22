class Greetings
  def hey
    puts 'How are you?'
  end
  alias_method :hi, :hey
end

Greetings.new.hi
