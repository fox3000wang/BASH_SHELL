a = [1, 2, 3, 4, 5, 6]

print "1: "
puts a[1..3].inspect

print "1: "
puts a.slice(1..3).inspect

print "2: "
puts a.slice(1,3).inspect

print "3: "
puts a[-2]

print "4: "
puts a.size

print "5: "
puts a.first

print "6: "
puts a.last

print "7: "
a.fill(1)
puts a.inspect