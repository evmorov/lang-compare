def join_party(yes, *names)
  p names if yes
end
join_party true, 'Alex', 'Kolya', 'Ann'
# ["Alex", "Kolya", "Ann"]
