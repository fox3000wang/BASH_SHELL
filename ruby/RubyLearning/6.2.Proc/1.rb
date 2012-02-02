greeting = Proc.new {|someone| puts "Hi, #{someone}"}
greeting.call("Lily")

def add(m)
  return Proc.new {|n| n + m }
end

add10 = add(10)
add100 = add(100)

print "40 + 10 = "
puts add10.call(40)

print "427 + 100 = "
puts add100.call(427)