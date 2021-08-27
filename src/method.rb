puts "=== hello method ==="
def hello(name)
	puts "Hello! " + name
end
hello("I'm tnakamur")


puts "=== method (return)==="
def add(a, b)
	return a + b
end 
ret = add(21, 20)
puts ret

puts "=== va_func(first, *args) ==="
def va_func(nums, *args)
	print nums
	puts " args in this func!!"
	puts args
end
puts "va_func(3, a, b, c)"
va_func(3, "a", "b", "c")

puts "=== func(first, &block) ==="
def repeat_func(cnt, &block)
	cnt.times do
		block.call
	end
end
puts 'repeat_func(3) { hello("Ruby") }'
repeat_func(3) { hello("Ruby") }


puts "=== 特異メソッド def str.print  ==="
str = String.new("ABC");
def str.print                     # strオブジェクトに特異メソッドを定義
	puts "[[[" + self + "]]]"
end
str.print                         # 特異メソッドを呼び出す

puts "=== 特異メソッド def arr.print ==="
arr = Array.new(3, 42)
def arr.print
	self.push(0)                  #自分自身のオブジェクトは self でアクセス
	puts self
end
arr.print
