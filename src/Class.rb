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


puts "=== Nest Class ==="
puts "nest Class"
class Foo
	class Bar
		def foobar
			puts "Bar of Foo"
		end
	end
end

nest = Foo::Bar.new
puts nest.foobar()

class Foo
	class Bar
		def foobar
			puts "Bar of Foo"
		end
	end
	class Hoge
		def hoge
			puts "hoge of Foo"
		end
	end
end
puts Foo::Hoge.new.hoge()


puts "=== Special Class ==="
class Lang
	def cpp
		puts "1. C/C++"
	end
end
obj3 = Lang.new
class << obj3
	def ruby
		puts "2. Ruby"
	end
end
obj3.ruby

puts "=== module ==="

module Mdl
	def add(x, y)
		return x + y
	end
end
module Mdl2
	def show(n)
		print "My LEVEL: ", 42 , "\n"
	end
end

class C
	include Mdl
	include Mdl2
end

mdl = C.new

puts mdl.add(21, 19)
mdl.show(42)
