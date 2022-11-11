# coding: utf-8

User.create!(name: "管理者",
            email: "sample@email.com",
            password: "password",
            password_confirmation: "password",
            employee_number: "1",
            uid: "A1",
            department: "管理部",
            admin: true)

User.create!(name: "上長A",
            email: "superior-a@email.com",
            department: "統括部",    
            password: "password",
            password_confirmation: "password",
            employee_number: "2",
            uid: "A2",
            admin: false,
            superior: true)

  User.create!(name: "上長B",
            email: "superior-b@email.com",
            department: "統括部",    
            password: "password",
            password_confirmation: "password",
            employee_number: "3",
            uid: "A3",
            admin: false,
            superior: true)
  

10.times do |n|
  name = Faker::Name.name
  email = "sample-#{n+4}@email.com"
  password = "password"
  User.create!(name: name,
              email: email,
              employee_number: "#{n+4}",
              uid: "A#{n+4}",
              password: password,
              password_confirmation: password)
end