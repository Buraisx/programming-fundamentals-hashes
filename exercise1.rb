
def calc_grades(percentage)
	plusminus = percentage%10 #Checks remainder to determine ending symbol 95/10 r=5
	tag = "" #The ending symbol
	# Collection of grades
	grade = {80..100 => "A",70..79 => "B", 60..69 => "C", 50..59 => "D", 0..49 => "F"}
	
	grade.each do |mark, letter| 
		if mark === percentage
			if percentage >85
				tag = "+"
			elsif percentage <50
				tag = ""
			elsif plusminus>5
				tag = "+"
			elsif plusminus<5
				tag = "-"
			end
			return letter + tag
		end
	end
end

puts "Enter a percentage."
percentage = gets.chomp
puts"Your mark is #{calc_grades(percentage.to_i)}"
# puts "Your mark is #{calc_grades(percentage.to_i)}"