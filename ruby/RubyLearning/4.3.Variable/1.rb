print "1: "
_a = 1
puts _a

print "2: "
$a = 2
puts $a

print "3: "
class A
  @name = ""
  def name
    @name
  end
  def name=(name)
    @name = name
  end
end
a = A.new
a.name = "abc"
puts a.name

print "4: "
class B
  @@name = ""
  def self.name
    @@name
  end
  def self.name=(name)
    @@name = name
  end
end
B.name = "ABC"
puts B.name

print "5: "
ABC = 123
puts ABC