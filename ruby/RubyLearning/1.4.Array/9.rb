a = [-2, -1, 0, 1, 2]

b = a.reject {|x| x > 0}
puts b.inspect