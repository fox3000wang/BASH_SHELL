class A
  def instance_method
    puts "instance_method."
  end
  def self.class_method1
    puts "class_method1."
  end
  def A.class_method2
    puts "class_method2."
  end
  class << self
    def class_method3
      puts "class_method3."
    end
  end
end

A.new.instance_method
A.class_method1
A.class_method2
A.class_method3