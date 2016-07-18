def my_select(arr)
  selected = []
  arr.each do |a|
    selected.push a if yield(a)
  end
  selected
end
puts my_select [1, 5, 10] { |x| x < 6 }


def my_select(arr, &filter)
  selected = []
  arr.each do |a|
    selected.push a if filter.call(a)
  end
  selected
end
puts my_select [1, 5, 10] { |x| x < 6 }
