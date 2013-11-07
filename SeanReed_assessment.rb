
# 1 Arrays
# array = ["Blake","Ashley","Jeff"]`
# a. Add a element to an array
# b. Write a statement to print out all the elements of the array.
# c. Return the value at index 1.
# d. Return the index for the value "Jeff".

array = ["Blake", "Ashley", "Jeff"]
array << "Sean"
array.each {|item| puts item}
puts "The value at index 1 of the array is #{array[1]}"
length_array = array.length
for num in 0..length_array
	puts "The index value for Jeff is #{num}." if array[num] == "Jeff" 
end

###2. Hashes

# instructor = {:name=>"Ashley", :age=27}

# a. Add a new key for location and give it the value "NYC".
  
# b. Write a statement to print out all the key/value pairs in the hash

# c. Return the name value from the hash.

# d. Return the key name for the value 27.

instructor = {name: "Ashley", age: 27}
instructor["location"] = "NYC"
instructor.each {|key,value| puts "#{key}, #{value}"}
puts instructor[:name]
instructor.each {|key,value| puts "The key name for the value 27 is #{key}" if value == 27}

# ###3. Nested Structures

#   ```ruby
# school = { 
#   :name => "Happy Funtime School",
#   :location => "NYC",
#   :instructors => [ 
#     {:name=>"Blake", :subject=>"being awesome" },
#     {:name=>"Ashley", :subject=>"being better than blake"},
#     {:name=>"Jeff", :subject=>"karaoke"}
#   ],
#   :students => [ 
#     {:name => "Marissa", :grade => "B"},
#     {:name=>"Billy", :grade => "F"},
#     {:name => "Frank", :grade => "A"},
#     {:name => "Sophie", :grade => "C"}
#   ]
# }
#   ```

#   a. Add a key to the school hash called "founded_in" and set it to the value 2013. 
#   b. Add a student to the school's students' array.

#   c. Remove "Billy" from the students' array.

#   d. Add a key to every student in the students array called "semester" and assign it the value "Summer".
#   e. Change Ashley's subject to "being almost better than Blake"
#   f. Change Frank's grade from "A" to "F".
#   g. Return the name of the student with a "B".
#   h. Return the subject of the instructor "Jeff".
#   i. Write a statement to print out all the values in the school. ***FLAG


ruby_school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

ruby_school[:founded_in] = 2013
new_student = {name: "Little Bobby Tables", grade: "A+"} #part a
ruby_school[:students] << new_student  #part b

puts "Deleting student Billy"

ruby_school[:students].delete_at(1) #part c.  deletes Billy's record




