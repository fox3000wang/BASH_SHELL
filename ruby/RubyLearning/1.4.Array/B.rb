a = [-2, -1, 0, 1, 2]

print "1: "
b = a.inject {|sum, n| sum + n}
puts b

print "2: "
b = a.inject(5) {|sum, n| sum + n}
puts b