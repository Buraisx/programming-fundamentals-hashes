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





