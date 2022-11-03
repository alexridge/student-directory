@students = [
 {:name => "Dr. Hannibal Lecter", cohort: :december},
 {:name => "Darth Vader", cohort: :september},
 {:name => "Nurse Ratched", cohort: :august},
 {:name => "Michael Corleone", cohort: :july},
 {:name => "Alex DeLarge", cohort: :april},
 {:name => "The Wicked Wicked of the West", cohort: :november},
 {:name => "Terminator", cohort: :november},
 {:name => "Freddy Kruger", cohort: :january}, 
 {:name => "The Joker", cohort: :february},
 {:name => "Joffrey Baratheon", cohort: :september},
 {:name => "Norman Bates", cohort: :may},
]

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  @students = []
  name = gets.chomp
  while !name.empty? do 
      @students << {name: name, cohort: :cohort}
      puts "Now we have #{@students.count} students"
      name = gets.chomp
  end 
@students 
end 

def print_header
  puts "The students of Villains Academy"
  puts "-" * 10 
end 

def print(names)
  @students.each do |student|
    puts "#{student[:name]}(#{student[:cohort]})"
  end 
end 

def print_footer(names)
  if names.length == 1 
    puts "overall we have #{names.length} great student."
  else
    puts "overall we have #{names.length} great students."
  end 
end

def interactive_menu
  loop do 
  print_menu
  process(gets.chomp)
  end 
end 

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list 
  print_footer(students)
end 

def process(selection)
  case selection 
    when "1"
      @students = input_students
    when "2"
      print_header
      print(@students)
      print_footer(@students)
    when "3"
      save_students
    when "9"
      exit
    else 
      puts "I don't know what you meant, try again."
  end 
end

def save_students 
  file = File.open("students.csv", "w")
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end 
  file.close 
end 



interactive_menu
