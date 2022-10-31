students = [
  ["Dr. Hannibal Lecter", :november],
  ["Darth Vader", :november],
  ["Nurse Ratched", :november],
  ["Michael Corleone", :november],
  ["Alex DeLarge", :november],
  ["The Wicked Wicked of the West", :november],
  ["Terminator", :november], 
  ["Freddy Kruger", :november],
  ["The Joker", :november],
  ["Joffrey Baratheon", :november],
  ["Norman Bates", :november]
]

def print_header
  puts "The students of Villains Academy"
  puts "-" * 10 
end 

def print(names)
    names.each do |student|
      puts "#{student[0]} (#{student[1]} cohort)"
    end 
end 

def print_footer(names)
  puts "overall we have #{names.length} great students."
end 

print_header
print(students)
print_footer(students)