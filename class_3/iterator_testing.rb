puts "This is the each iterator:"

jordan = ["Jordan", "Phillips", "Student", "jordankphillips@gmail.com"]

jordan.each do |a|
  puts a.downcase.capitalize
end

puts "This is each with index iterator:"
jordan.each_with_index do |a,index|
  puts a + " at index " + index.to_s
end

###

numbers = [4,5,2,47,3]
puts "Sum of the array:"

p array_sum = numbers.reduce { |sum,el| sum + el }
# the first variable in the reduce, "sum", starts as nil. Then iterate over each array component as the second variable. 

puts "Add 1 to each element"
p numbers.map! {|a| a + 1 }
p numbers

puts "Doing stuff the old fashioned way, with a for loop" 
for i in 0...jordan.length
  puts jordan[i].upcase
end

###

