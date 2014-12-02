#create new Object
ticket = Object.new

#add data to Object by defining methods "Object.data"
def ticket.date
	"01/02/03"
end

def ticket.venue
	"Town Hall"
end

def ticket.event
	"Author's reading"
end

def ticket.performer
	"Mark Twain"
end

def ticket.seat
	"Second Balcony, row J, seat 12"
end

def ticket.price
	5.50
end

def ticket.availability_status
	"sold"
end

def ticket.available?
	false
end

#No string interpolation
print "This ticket is for: "
print ticket.event + ", at "
print ticket.venue + ", on "
puts ticket.date + "."
print "The performer is "
puts ticket.performer + "."
print "The seat is "
print ticket.seat + ", "
print "and it costs $"
puts "%.2f." % ticket.price

#With string interpolation
print "This ticket is for: #{ticket.event}, at #{ticket.venue}, on #{ticket.date}.\n" +
	"The performer is #{ticket.performer}.\n" +
	"The seat is #{ticket.seat}, and it costs $#{"%.2f." % ticket.price}\n"

if ticket.available?
	puts "You're in luck! This ticket is still available."
else
	puts "Sorry--that seat has been sold."
end

print "Information desired: "
request = gets.chomp

if ticket.respond_to?(request)
	puts ticket.send(request)
else
	puts "No such information available."
end
