greet = "\033[35mHello, my first ruby program\033[0m"
puts greet
puts

puts "======= String ======="
string = "tnakamur"

puts "string: "
puts string
puts "string.index('a'): "
puts string.index("a")
puts "string.length: "
puts string.length
puts "string.class:"
puts string.class

puts "======= Int Array ======="
arr = [42, 21, 90, 24]
puts "arr: "
print arr
puts

sorted_arr = arr.sort
puts "after sort:"
print sorted_arr
puts

puts "======= HASH ======="
hash = { "name" => string, 42 => "tokyo", "lvl" => 6.24 }
print hash
puts
puts "hash[42]: "
puts hash[42]
puts "hash[name]: "
puts hash["name"]
puts "hash[lvl]: "
puts hash["lvl"]

puts "\n--- hash.values --- "
puts hash.values
puts "\n-------hash[:skil] = 'C/C++/Docker'------ "
hash[:skill] = "C/C++/Docker"
puts hash.values

