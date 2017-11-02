puts "How many pizzas do you want to order?"
quantity = gets.chomp

def count_toppings(pizza_num)
	puts "How many toppings for pizza #{pizza_num}"
	quantity = gets.chomp
	puts  "You have ordered a pizza with #{quantity} toppings."
end

quantity.to_i.times do |i|
	count_toppings(i+1)
end
	