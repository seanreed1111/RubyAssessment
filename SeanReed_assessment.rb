
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
