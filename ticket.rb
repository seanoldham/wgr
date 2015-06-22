# Rewrite with Ticket class
class Ticket
  def date
    '01/02/03'
  end

  def venue
    'Town Hall'
  end

  def event
    "Author's reading"
  end

  def performer
    'Mark Twain'
  end

  def seat
    'Second Balcony, row J, seat 12'
  end

  def price
    5.50
  end

  def availability_status
    'sold'
  end

  def available?
    false
  end
end

ticket = Ticket.new

# With string interpolation
print "This ticket is for: #{ticket.event}, at #{ticket.venue}, on #{ticket.date}.\n" +
  "The performer is #{ticket.performer}.\n" +
  "The seat is #{ticket.seat}, and it costs $#{'%.2f.' % ticket.price}\n"

if ticket.available?
  puts "You're in luck! This ticket is still available."
else
  puts 'Sorry--that seat has been sold.'
end

print 'Information desired: '
request = gets.chomp

if ticket.respond_to?(request)
  puts ticket.send(request)
else
  puts 'No such information available.'
end
