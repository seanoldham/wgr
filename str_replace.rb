str = "Hello"
abc = str
str.replace("Goodbye")
puts str
puts abc
puts str.object_id
puts abc.object_id
def say_goodbye
  str = "Hello"
  abc = str
  str.replace("Goodbye")
  puts str
  puts abc
end
say_goodbye

str = "Hello"
abc = str
str = "Goodbye"
puts str
puts abc
