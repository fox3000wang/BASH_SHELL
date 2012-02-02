a = {1 => "a", 2 => "b", 3 => "c"}

print "1: "
a[3] = "c"
a[4] = "d"
puts a.inspect

print "2: "
a.shift
puts a.inspect

print "3: "
a.delete 3
puts a.inspect