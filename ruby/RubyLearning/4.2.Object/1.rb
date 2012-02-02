class People
  attr_accessor :name, :gender
  def initialize(name, gender)
    @name = name
    @gender = gender
  end
end

p = People.new "lily", "female"
puts "p.name = " + p.name
puts "p.gender = " + p.gender