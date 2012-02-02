a = [1, 2, 3, 4, 5, 6]

print "1: "
b = a.map {|x| x * 2}
puts b.inspect

print "2: "
b = a.collect {|x| x * 2}
puts b.inspect