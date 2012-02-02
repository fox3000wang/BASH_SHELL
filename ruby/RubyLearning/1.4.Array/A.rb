a = [-2, -1, 0, 1, 2]

print "1: "
b = a.detect {|x| x > 0}
puts b

print "2: "
b = a.find {|x| x > 0}
puts b