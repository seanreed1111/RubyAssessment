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

# puts "ruby_school[:name] is a #{(ruby_school[:name]).class}" #String
# puts "ruby_school[:location] is a #{(ruby_school[:location]).class}" #String
# puts "ruby_school[:instructors] is a #{(ruby_school[:instructors]).class}" #Array
# puts "ruby_school[:students] is a #{(ruby_school[:students]).class}"  #Array

#ruby_school[:students].each {|item| puts item[:name]}


# ruby_school[:students].each do |item|
#   puts item
#   item.each do |key, value|

#   puts "#{key}, #{value}"
  
#   end
# end

# puts ruby_school[:students][1] #{name: "Billy", grade: "F"}
# puts "Attempting to delete student Billy/n"

# ruby_school[:students].delete_at(1) #this deletes Billy!
# puts ruby_school[:students]

#   d. Add a key to every student in the students array called "semester" 
#and assign it the value "Summer".
# so, to do this, I need to merge the hash {semester: "Summer"} to each student's hash


# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 254, "c" => 300 }
# h1.merge!(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}

# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 254, "c" => 300 }
# h1.merge!(h2) { |key, v1, v2| v1 }
#                 #=> {"a"=>100, "b"=>200, "c"=>300}

#ruby_school[:students].each {|item| item.merge!({semester: "Summer"})} #3d this works!

#3e Change Ashley's subject to "being almost better than Blake"
# Ashley is ruby_school[:instructors][1]
# puts ruby_school[:instructors][1]
# ruby_school[:instructors][1][:subject] = "being almost better than Blake"
# puts ruby_school[:instructors][1]
# ruby_school[:students][2][:grade] = "F"
# puts ruby_school[:students][2]


#this for loop works, but it is very non Ruby
# for num in 0..ruby_school[:students].length-1

#   if ruby_school[:students][num][:grade] == "B"
#     puts "The student with the grade of B is #{ruby_school[:students][num][:name]}" 
#   end
# end

# ruby_school[:students].each do |item|

#   puts "#{item[:name]} has a grade of B." if item[:grade]=="B"
    
# end

# 3h Return the subject of the instructor "Jeff".

# ruby_school[:instructors].each do |item|

#   puts "Jeff's subject is #{item[:subject]}" if item[:name]=="Jeff"
    
# end

#3i print out all the  values in the school
# ruby_school.each_value do |value|
#   puts "#{value}"
#   puts "value.is_a?(Hash) = #{value.is_a?(Hash)}"
#   puts "value.is_a?(Array) = #{value.is_a?(Array)}"
#   puts "value.kind_of?(String) = #{value.kind_of?(String)}"
# end

ruby_school.each_value do |outer_value|
  
  if outer_value.kind_of?(String) 
    puts outer_value 
  else
    outer_value.each do |inner_value| 
      inner_value.each_value {|inner_inner_value| puts inner_inner_value}
    end
  end
end


