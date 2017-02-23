require_relative('../models/student.rb')
require_relative('../models/house.rb')
require('pry')

student1 = Student.new(
{ "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 21
  })

student2 = Student.new(
{ "first_name" => "Marry",
  "last_name" => "Jones",
  "house" => "Ravenclaw",
  "age" => 19
  })

student3 = Student.new(
{ "first_name" => "Ron",
  "last_name" => "Weasley",
  "house" => "Gryffindor",
  "age" => 21
  })

student4 = Student.new(
{ "first_name" => "Bob",
  "last_name" => "Monkhouse",
  "house" => "Hufflepuff",
  "age" => 42
  })

student5 = Student.new(
{ "first_name" => "Ultimate",
  "last_name" => "Warrior",
  "house" => "Slytherin",
  "age" => 200
  })

student1.save
student2.save
student3.save
student4.save
student5.save


house1 = House.new(
{ "house_name" => "Gryffindor",
  "logo" => " "
})
house2 = House.new(
{ "house_name" => "Ravenclaw",
  "logo" => "http://images.esellerpro.com/2903/I/615/62/lrgscalePE60401ACCPOS-HARRY-POTTER-Magnet-Ravenclaw-Crest.jpg"
})
house3 = House.new(
{ "house_name" => "Hufflepuff",
  "logo" => "http://images.esellerpro.com/2903/I/615/61/lrgscalePE60311ACCPOS-HARRY-POTTER-Magnet-Hufflepuff-Crest.jpg"
})
house4 = House.new(
{ "house_name" => "Slytherin",
  "logo" => "http://images.esellerpro.com/2903/I/615/63/lrgscalePE60421ACCPOS-HARRY-POTTER-Magnet-Slytherin-Crest.jpg"
})

house1.save
house2.save
house3.save
house4.save



binding.pry
nil