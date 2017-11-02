# This function takes the percentage to convert to a letter
def calc_grades(percentage)
	plusminus = percentage%10 #Checks remainder to determine ending symbol 95/10 r=5
	tag = "" #The ending symbol
	# Collection of grades
	grade = {80..100 => "A",70..79 => "B", 60..69 => "C", 50..59 => "D", 0..49 => "F"}
	#loops through collection
	grade.each do |mark, letter| 
		#checks if PERCENTAGE belongs inside the range of MARK using ===
		if mark === percentage
			#checking exceptionals of A+ and F
			if percentage >85
				tag = "+"
			elsif percentage <50
				tag = ""
			#Normal check for every other grade
			elsif plusminus>5
				tag = "+"
			elsif plusminus<5
				tag = "-"
			end
			return letter + tag
		end
	end
end

# Prompts user for an input
puts "Enter a percentage."
percentage = gets.chomp
#Calls method to output Converted grade.
puts "Your mark is #{calc_grades(percentage.to_i)}"
