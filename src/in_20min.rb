class Greeter
	def initialize(name = "world") # initialize = 初期化method
		@name = name
	end
	def hi
		puts "Greeter: Hi #{@name}!"
	end
	def bye
		puts "Greeter: by #{@name}, come back soon."
	end
end

if __FILE__ == $0
obj = Greeter.new("PiPi")
obj.bye
puts "===objectの継承先(祖先)のメソッドも含む==="
p Greeter.instance_methods
puts "===Greeterのみ==="
p Greeter.instance_methods(false)
end
# undefined method `name'
# p obj.name 

# classを再定義
class Greeter
	attr_accessor :names
	def hi
		if @names.nil?
			puts "...(nil)"
		elsif @names.respond_to?("each")
			# @names is a list of some kind, iterate!
			@names.each do |name|
			  puts "Hi #{name}!"
			end
		else
			puts "Greeter: Hi #{@names}!"
		end
	end
end

## __FILE__ 現在のファイル名を返す特別な変数
## $0 プログラムを実行するときに使われるファイル名
#もしこれがメインファイルとして実行されているならば……
if __FILE__ == $0
puts "===== Array each iterate ====="
puts obj.names
obj.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
obj.hi
obj.names = nil
obj.hi
end
