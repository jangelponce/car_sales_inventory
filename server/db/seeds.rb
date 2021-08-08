# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "=== Running seeds ==="
user_params = { email: "user@test.com", password: "P@ssw0rd" }
admin_params = { email: "admin@test.com", password: "P@ssw0rd" }

dealership_params = 5.times.map do
  {
    name: "#{Faker::Company.name} #{Faker::Company.suffix}"
  }
end

Dealership.create(dealership_params)
puts "Dealerships created: #{Dealership.count}"

cars_params = 50.times.map do
  make = Faker::Vehicle.make
  {
    make: make,
    model: Faker::Vehicle.model(make_of_model: make),
    year: Faker::Vehicle.year,
    price: Faker::Number.decimal(l_digits: 5, r_digits: 2),
    state: Car.states.keys.sample.to_sym,
    dealership_id: Dealership.pluck(:id).sample
  }
end

Car.create(cars_params)
puts "Cars created: #{Car.count}"

user = User.new(user_params)
if user.save
  puts "User generated\n\temail: #{user_params[:email]}\n\t pass: #{user_params[:password]}"
else
  puts "User already exists\n\temail: #{user_params[:email]}\n\t pass: #{user_params[:password]}"
end

admin = Admin.new(admin_params)
if admin.save
  puts "Admin generated\n\temail: #{admin_params[:email]}\n\t pass: #{admin_params[:password]}"
else
  puts "Admin already exists\n\temail: #{admin_params[:email]}\n\t pass: #{admin_params[:password]}"
end