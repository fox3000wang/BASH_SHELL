class People
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def to_s
    "name = #{@name}, age = #{@age}"
  end
end

lily = People.new("Lily", 18)
puts lily

class Teacher < People
  def initialize(name, age, gender)
    super(name, age)
    @gender = gender
  end
  
  def to_s
    super + ", gender = #{@gender}"
  end
end

lisa = Teacher.new("Lisa", 28, "female")
puts lisa