class Person

  def method_missing(method_name, *args)
	  obj = self.inspect
	  begin
	    self.instance_eval <<-EOF
	      def #{method_name}
	        puts '#{obj}, #{method_name}'
	      end
	    EOF
	    send(method_name)
	  rescue
	    super(method_name, *args)
	  end
	end

	def modify_method(method_name, method_body)
	  self.instance_eval <<-EOF
	    def #{method_name}
	      #{method_body}
	    end
	  EOF
	end

end

p = Person.new
p.sleep
p.modify_method(:sleep, "puts 'This is Lily sleeping...'")
p.sleep