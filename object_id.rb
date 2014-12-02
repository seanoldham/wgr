obj = Object.new
puts "The ID of 'obj' is #{obj.object_id}."

str = 'Strings are objects too, and this is a string!'
puts "The ID of the string object 'str' is #{str.object_id}."
puts "The ID of the integer 100 is #{100.object_id}."

a = Object.new
b = a
puts "'a' has an ID of #{a.object_id} and 'b' has an ID of #{b.object_id} because b = a."

string_1 = 'Hello'
string_2 = 'Hello'
puts "string_1 = #{string_1}. " + "string_1's ID is #{string_1.object_id}."
puts "string_2 = #{string_2}. " + "string_2's ID is #{string_2.object_id}."
puts "string_1 and string_2 both equal 'Hello' but since they're different instances, they each have a different object_id."
