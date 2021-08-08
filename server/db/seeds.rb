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

user = User.new(user_params)
if user.save
  puts "User generated\n\temail: #{user_params[:email]}\n\t pass: #{user_params[:password]}"
end

admin = Admin.new(admin_params)
if admin.save
  puts "Admin generated\n\temail: #{admin_params[:email]}\n\t pass: #{admin_params[:password]}"
end