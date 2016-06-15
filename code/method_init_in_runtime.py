class ProccessElements:
  def __init__(self):
    def element(el_name):
      def render(content):
        return '<{0}>{1}</{0}>'.format(el_name, content)
      return render

    for el_name in self.elements:
      setattr(self, el_name, element(el_name))


class HtmlELements(ProccessElements):
  elements = ('div', 'span')

print(HtmlELements().div('hello'))
