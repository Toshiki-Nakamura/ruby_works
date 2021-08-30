n = gets.to_i

c = '*'

for i in 1..n do
	for j in 0..n-i do
		print " "
	end
	for j in 0..i-1 do
		print c, " "
	end
	puts
end

triangle = n * (n + 1) / 2

print "\n nums: " 

puts triangle
