class ProccessElements
  def self.element(el_name)
    define_method "#{el_name}_element" do |content|
      p "<#{el_name}>#{content}</#{el_name}>"
    end
  end
end

class HtmlELements < ProccessElements
  element :div
  element :span
end

HtmlELements.new.div_element('hello')
# "<div>hello</div>"
