a = {1 => "a", 2 => "b", 3 => "c"}

print "1: "
b = a.reject {|key, value| value == 'b'}
puts b.inspect

print "2: "
puts a.merge({1 => 'A', 3 => 'C', 4 => 'd'}).inspect