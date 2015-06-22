# include current directory in PATH
$LOAD_PATH << '.'

puts 'This is the first (master) program file.'

# Import secondary file
require 'loadee.rb'

puts 'And back again to the first file.'
