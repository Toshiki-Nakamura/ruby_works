def fizzbuzz(n)
	if n % 3 == 0 && n % 5 == 0
		puts n.to_s + " fizzbuzz"
	elsif n % 3 == 0
		puts n.to_s + " fizz"
	elsif n % 5 == 0
		puts n.to_s + " buzz"
	end
end

for i in 1..50 do
	fizzbuzz(i)
end

n = 51
until n > 80
	fizzbuzz(n)
	n += 1
end

i = 81
while i <= 100
	fizzbuzz(i)
	i+=1
end
