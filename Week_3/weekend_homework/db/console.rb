require_relative('../models/customer.rb')
require_relative('../models/film.rb')
require_relative('../models/ticket.rb')

require('pry')

Customer.delete_all
Film.delete_all
Ticket.delete_all

customer1 = Customer.new({
'name' => 'Little John', 'funds' => 100
  })
customer2 = Customer.new({
'name' => 'Cautious Sarah', 'funds' => 90
  })
customer3 = Customer.new({
'name' => 'Broke Theresa', 'funds' => 10
  })

customer1.save
customer2.save
customer3.save

film1 = Film.new({
'title' => 'T2', 'price' => 10
  })
film2 = Film.new({
'title' => 'Hidden Figures', 'price' => 15
  })
film3 = Film.new({
'title' => 'Allied', 'price' => 10
  })
film4 = Film.new({
'title' => 'Fifty Shades Darker', 'price' => 5
  })

film1.save
film2.save
film3.save
film4.save

ticket1 = Ticket.new({
'customer_id' => customer1.id, 'film_id' => film1.id
  })
ticket2 = Ticket.new({
'customer_id' => customer2.id, 'film_id' => film2.id
  })
ticket3 = Ticket.new({
'customer_id' => customer2.id, 'film_id' => film3.id
  })
ticket4 = Ticket.new({
'customer_id' => customer3.id, 'film_id' => film4.id
  })

ticket1.save
ticket2.save
ticket3.save
ticket4.save

binding.pry
nil


