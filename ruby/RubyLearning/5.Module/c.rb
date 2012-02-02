module B
  def test
	  puts "B"
	end
end

class A
	include B
end

A.new.test


module B
  def test
	  puts "B"
	end
end

class C
  class << self
  	include B
  end
end

C.test