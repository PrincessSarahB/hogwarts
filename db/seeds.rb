require_relative('../models/student.rb')
require_relative('../models/house.rb')

Student.delete_all()

student1 = Student.new(
  {"first_name" => "Harry",
    "last_name" => "Potter",
    "house" => "Gryffindor",
    "age" => 15
  })


student2 = Student.new(
  {
    "first_name" => "Draco",
      "last_name" => "Malfoy",
      "house" => "Slytherin",
      "age" => 15

  }
)


student3 = Student.new(
  {
    "first_name" => "Cedric",
      "last_name" => "Diggory",
      "house" => "Hufflepuff",
      "age" => 16

  }
)



student4 = Student.new(
  {
    "first_name" => "Luna",
      "last_name" => "Lovegood",
      "house" => "Ravenclaw",
      "age" => 14

  }
)



house1 = House.new(
  {
    "house_name" => "Gryffindor",
    "url" => "../public/gryffindor_logo.jpg"
  })



  house2 = House.new(
    {
      "house_name" => "Slytherin",
      "url" => "../public/slytherin_logo.jpg"
    })



    house3 = House.new(
      {
        "house_name" => "Ravenclaw",
        "url" => "../public/ravenclaw_logo.jpg"
      })



      house4 = House.new(
        {
          "house_name" => "Hufflepuff",
          "url" => "../public/hufflepuff_logo.jpg"
        })
        student1.save()
        student2.save()
        student3.save()
        student4.save()

        house1.save()
        house2.save()
        house3.save()
        house4.save()
