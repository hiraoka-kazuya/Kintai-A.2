# coding: utf-8

User.create!(name: "管理者",
            email: "sample@email.com",
            password: "password",
            password_confirmation: "password",
            employee_number: "1",
            uid: "A1",
            department: "管理部",
            admin: true)

10.times do |n|
  name = Faker::Name.name
  email = "sample-#{n+1}@email.com"
  password = "password"
  User.create!(name: name,
              email: email,
              employee_number: "#{n+2}",
              uid: "A#{n+2}",
              password: password,
              password_confirmation: password)
end