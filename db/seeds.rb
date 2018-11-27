# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all


user = User.new(
	first_name:"Zaneta",
	last_name: "Uba",
	email: "Uba@gmail.com",
	password: "123456"
	)
user.save!

goal1 = Goal.new(
	name: "House"
	)
goal1.save!


goal2 = Goal.new(
	name: "Car"
	)
goal2.save!


goal3 = Goal.new(
	name: "Education"
	)
goal3.save!

goal4 = Goal.new(
    name: "Wedding"
	)
goal4.save!


goal5 = Goal.new(
	name: "Travel"
	)
goal5.save!


goal6 = Goal.create!(
	name: "General Saving"
	)
Budget.new(
	user_id: user.id,
	name: "food",
	amount_cents: 10000,
	category_list:["Food & Drink","Bills & Fees", "Car", "Education", "Transport", "Clothes", "Home", "Entertainment","Healthcare"]

	)


