class MyClass
	@name = ""
	@org
	def setName(str)
		@name = str
	end
	def getName()
		return @name
	end
	def setOrg(n)
		@org = n
	end
	def getOrg()
		return @org
	end
end

obj = MyClass.new
obj.setName("tnakamur")
puts obj.getName()

obj.setOrg(42)
puts obj.getOrg()

puts "=== Inheritance ==="
class Child < MyClass # 継承 class < ParentClass
	@addr = ""
	def setAddr(str)
		@addr = str
	end
	def getAddr()
		return @addr
	end
end

obj2 = Child.new
obj2.setName("Tnakamur")
obj2.setOrg(42)
obj2.setAddr("Roppongi")

puts obj2.getName()
puts obj2.getOrg()
puts obj2.getAddr()