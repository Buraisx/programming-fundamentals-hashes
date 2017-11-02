students = {
  :cohort1 => 34,
  :cohort2 => 42,
  :cohort3 => 22
}

students.each{ |cohort,size| puts "#{cohort}: #{size} students"}
students[:cohort4] = 43
puts students.keys

students.each do |cohort,size|
	students[cohort] = size*1.05
end

puts students

students.delete(:cohort2)
puts students