require_relative('../models/students.rb')

Student.delete_all()

student1 = Student.new(
  {"first_name" => "Harry",
    "last_name" => "Potter",
    "house" => "Gryffindor",
    "age" => 15
  })
student1.save()

student2 = Student.new(
  {
    "first_name" => "Draco",
      "last_name" => "Malfoy",
      "house" => "Slytherin",
      "age" => 15

  }
)

student2.save()

student3 = Student.new(
  {
    "first_name" => "Cedric",
      "last_name" => "Diggory",
      "house" => "Hufflepuff",
      "age" => 16

  }
)

student3.save()

student4 = Student.new(
  {
    "first_name" => "Luna",
      "last_name" => "Lovegood",
      "house" => "Ravenclaw",
      "age" => 14

  }
)

student4.save()
