require "./MegaGreeter.rb"

puts '==== mg = MegaGreeter.new(["a", "b"])'
mg = MegaGreeter.new(["a", "b"])
mg.hi

puts '==== mg.names = ["andy", "bob", "charly", "daisy"]'
mg.names = ["andy", "bob", "charly", "daisy"]
mg.hi
mg.say_bye

puts '==== mg2 = MegaGreeter.new'
mg2 = MegaGreeter.new
mg2.hi
mg2.say_bye

puts '==== mg3 = MegaGreeter.new(nil)'
mg3 = MegaGreeter.new(nil)
mg3.hi
mg3.say_bye

# ruby main.rb
