a = [-2, -1, 0, 1, 2]

print "1: "
b = a.select {|x| x > 0}
puts b.inspect

print "2: "
b = a.find_all {|x| x > 0}
puts b.inspect