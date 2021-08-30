line = gets.chomp #chomp で改行除く

str = line

def palindrome(s)
	r = s;
	if s == r.reverse
		return true
	else 
		return false
	end
end


## strが回文になるまで
while !palindrome(str)
	rev = str.reverse
	n = str.to_i + rev.to_i
	str = n.to_s
end

puts str