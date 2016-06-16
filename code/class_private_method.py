class Animal:
  def eat(self, food):
    if self._is_meat(food):
      print('Om nom nom')

  def _is_meat(self, food):
    return food == 'meat'

Animal().eat('meat')
