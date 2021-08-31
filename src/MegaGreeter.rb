class MegaGreeter
	attr_accessor :names
	# Create the object
	# デフォルトで"World"が引数になるので
	# MegaGreeter.new のように引数なしでもインスタンスできる
	def initialize(name = "World") 
		@names = name
	end
	def hi
		if @names.nil?
			puts "...(nil)"
		elsif @names.respond_to?("each") # @names is a list of some kind, iterate!
			@names.each do |name|
			  puts "Hi #{name}!"
			end
		else
			puts "Greeter: Hi #{@names}!"
		end
	end
	def say_bye
		if @names.nil?
			puts "...(nil)"
		elsif @names.respond_to?("join")
			puts "Goodbye #{@names.join(", ")}! comeback soon."
		else
			puts "Goodbye #{@names}! comeback soon."
		end
	end
end


if __FILE__ == $0 
puts "===== Array join ====="
mg = MegaGreeter.new

mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
mg.say_bye
mg.names = "jay"
mg.say_bye
end
