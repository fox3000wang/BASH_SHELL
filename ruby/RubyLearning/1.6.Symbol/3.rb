class Symbol
  def to_proc
    proc {|obj, *args| obj.send(self, *args)}
  end
end

words = %w(abc bcd cde def efg)
list = words.map(&:capitalize)
print "1: "
puts list.inspect

list2 = words.map {|w| w.send(:capitalize)}
print "2: "
puts list2.inspect