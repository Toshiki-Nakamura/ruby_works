line = gets.chomp #chomp で改行除く

str = line.dup

def palindrome(s)
	r = s;
	if s == r.reverse
		return true
	else 
		return false
	end
end

while 1
	if palindrome(str)
		break 
	end
	rev = str.reverse
	n = str.to_i + rev.to_i
	str = n.to_s
end

puts str