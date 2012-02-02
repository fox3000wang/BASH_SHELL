class A

  def method_missing(method_name, *arguments)  
    puts "You are calling #{method_name}(" + arguments.join(", ") + "), but it doesn't exist!"
  end

end

A.new.some_method
A.new.some_method 1, 2