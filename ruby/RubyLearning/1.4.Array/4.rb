a = [1, 2, 3, 4, 5, 6]

print "1: "
a.unshift "aaa"
puts a.inspect

print "2: "
a.shift
puts a.inspect

print "3: "
a.push "bbb"
puts a.inspect

print "4: "
a.pop
puts a.inspect

print "5: "
a.insert(2, "abc")
puts a.inspect

print "6: "
a.delete("abc")
puts a.inspect