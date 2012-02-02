class A
  attr_accessor :name
end

a = A.new
print "a.name = "
puts a.name

a.name = "Lily"
print "a.name = "
puts a.name

class B
  def name
    @name
  end
  
  def name=(name)
    @name = name
  end
end

b = B.new
print "b.name = "
puts b.name

b.name = "Lily"
print "b.name = "
puts b.name