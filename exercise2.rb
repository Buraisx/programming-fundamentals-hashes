# Initializing Arrays
fav_colors = ["blue", "black","white","red"]
peer_ages = [22,24,22,25]
coin_flip = ["tails","tails","tails","heads","heads",]
artists = ["Lily Allen", "Idina Menzel","Kristen Chenoweth"]
symbol_colors = [:blue, :black,:white,:red]

#Initializing Hashes
three_words = { :genderfluid => "relating to, or a being whose gender is not fixed; a mix of both genders",
				:Neanderthal => "a species of subspecies of archaic humans that became extinct 40000 years ago",
				:Homunculus => "a very small human or humanoid creature"}
fav_movies = {"Shaun of the Dead" => 2004, "Logan" => 2017, "National Treasure" => 2004}
three_cities = {"Toronto" => 2.809*10**6, "Tokyo" => 9.273*10**6, "New York" => 8.538*10**6}
peer_names = {"Allen" => 22, "Valerie" => 24, "Calvin" => 22, "Abnoor" => 25}

# Exercise 1
# Print out every coin flip
coin_flip.each do |flip|
	puts flip
end
# print out first favorite color
puts "\n#{fav_colors[0]}\n\n"
# Sort the ages and print them out
peer_ages.sort.each do |ages|
	puts ages
end
# Add new baby to family
peer_ages<<0
puts "\n#{peer_ages[-1]}"
# Print out a movie
puts "\n#{fav_movies["Logan"]}"


# Exercise 2
# last element of favorite colors
puts "\n#{fav_colors[-1]}"
# add a new city
three_cities["Hong Kong"] = 7.347*10**6
puts "\n#{three_cities["Hong Kong"]}\n\n"
# reversed coin flip
coin_flip = coin_flip.reverse
coin_flip.each do |flip|
	puts flip
end
# population
puts "\nThe population of Toronto is #{three_cities["Toronto"]} people"
# sentence for every artist
artists.each{|name| puts "I think #{name} is great."}

# Exercise 3
# Q1
2.times do |i|
	puts "#{artists[i]}"
end
# Q2
fav_movies.each{ |movie,year| puts "#{movie} came out in #{year}"}
# Q3
peer_ages.sort.reverse.each{ |age| puts "#{age}"  }
# Q4
fav_movies["Beauty and the Beast"] = [1991,2017]
puts "Beauty and the beast came out in #{fav_movies["Beauty and the Beast"][0]} and #{fav_movies["Beauty and the Beast"][1]}"

# Exercise 4
# Q1
peer_ages.each do |lessthan30|
	if lessthan30 < 30
		puts "#{lessthan30}"
	end
end
# Q2
puts "#{peer_ages.sort.last}"
# Q3
count = 0
coin_flip.each do |heads|
	if heads == "heads"
		count = count + 1
	end
end
puts "#{count} heads"
# Q4
artists.delete("Kristen Chenoweth")
# Q5
three_cities["Toronto"] = 15
puts "#{three_cities["Toronto"] }"


# Exercise 5
puts "#{three_cities.values.reduce(:+)}"
peer_names.each do |name,age|
	if age>23
		puts "#{name} is old."
	else
		puts "#{name} is young"
	end
end

puts "#{fav_colors[-1]} and #{fav_colors[-2]}"
peer_ages.map! do |age|
	age += 1
	puts "#{age}"
end
fav_colors << "maroon"
fav_colors << "black"

# Exercise 6
movies = {"1999" => ["The Matrix", "Star Wars: Episode 1", "The Mummy"],"2009" => ["Avatar", "Star Trek", "District 9"],"2019" => ["How to Train Your Snake 3", "Toy Story 4", "Star Wars: Episode 9"]}

three_counts = [{:Name => "Canada", :continent => "North America", :island => "No"},
				{:Name => "Japan", :continent => "Asia", :island =>  "yes"},
				{:Name => "USA", :continent => "North America", :island => "No"}]

skateboard = []
20.times do |i|
	skateboard[i]= "I will not skateboard in the halls"
	puts "I will not skateboard in the halls"
end

count50 = []
50.times do |x|
	count50[x]= x+1
end
sum = 0
count50.each do |num|
	sum = sum + num
end
puts sum
to50 = []
50.times do |x|
	3.times do
		to50<< x +1
	end
end

newcounts = []
three_counts.each do |findisle|
	if findisle[:island] == "No"
		newcounts<< findisle[:Name]
	end
end
puts newcounts
puts three_counts

# Exercise 7
array_num = [250,7.95,30.95,16.50]
array_num2 = [50,20,25,60,100]
def expense(array_num)
	sum = 0
	array_num.each { |number| sum = sum +number }
	puts sum
end
expense(array_num)
expense(array_num2)

# Exercise 9
i = 0
bananacounter = 0
grocery_list = ["carrots", "toilet paper", "apples", "salmon"]
grocery_list << "Rice"
grocery_list.each { |food| 
	i += 1
	puts " * #{food}"  
	if food == "bananas"
		bananacounter = 1
	end

}
puts i
if bananacounter == 1
	puts "you need to pick up bananas"
else
	puts "you don't need to pick up bananas"
end

puts "#{grocery_list[1]}\n\n"
puts grocery_list.sort_by{ |food| food.downcase }
grocery_list.delete("salmon")
grocery_list.each {|food| puts food }

