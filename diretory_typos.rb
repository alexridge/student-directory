def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
    while !name.empty? do
  # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
  # get another name from the user
    name = gets.chomp
    end
  # return the array of students
    return students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print(student)
  if student.length > 0
    student.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end    
  else 
    puts "no students enrolled" 
  end
end

def print_footer(names)
  if names.count == 0 
    puts ""
  else 
    puts "overall, we have #{names.count} great students."
  end 
end


students = input_students
print_header
print(students)
print_footer(students)