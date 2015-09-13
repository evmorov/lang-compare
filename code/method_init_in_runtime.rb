class ProccessElements
  def self.element(el_name)
    define_method "#{el_name}_element" do |content|
      "<#{el_name}>#{content}</#{el_name}>"
    end
  end
end

class HtmlELements < ProccessElements
  element :div
  element :span
end

p HtmlELements.new.div_element('hello')
# "<div>hello</div>"
