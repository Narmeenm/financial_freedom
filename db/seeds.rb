# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'
require 'time'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all the seeds"
CashFlow.destroy_all
Budget.destroy_all
User.destroy_all
Goal.destroy_all

# User Seeds

## set user seed info
user_attributes = [
  {
    first_name:"Zaneta",
    last_name: "Uba",
    email: "Uba@gmail.com",
    password: "123456",
    male: true
  },
  {
    first_name:"Narmeen",
    last_name: "Uba",
    email: "narm@gmail.com",
    password: "123456",
    male: true
  },
  {
    first_name:"Cory",
    last_name: "Uba",
    email: "cory@gmail.com",
    password: "123456",
    male: true
  }
]

puts "creating goal conquering users...."
## generate user seeds for all user seed info
User.create!(user_attributes)
zaneta = User.find_by(first_name: "Zaneta")
narmeen = User.find_by(first_name: "Narmeen")
cory = User.find_by(first_name: "Cory")


# Budget Seeds
categories = ["Food & Drink","Bills & Fees", "Car", "Education", "Transport", "Clothes", "Home", "Entertainment","Healthcare"]
## set budget seed info
budget_attributes = [
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 750
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  },
  {
    category_list: categories.sample,
    user: zaneta,
    amount: 500
  }
]

puts "creating smart budgets...."
Budget.create!(budget_attributes)

#Cory TODO get the names of the budgets

# Cash Flow Seeds

## set cash flow seed info

User.all.each do |user|
 5.times do
   CashFlow.create(date: Date.today - rand(1..3), user: user, budget: user.budgets.sample)
 end
end


puts "creating smart budgets.."



#CORY TODO MAKE GOAL SEEDS SAME AS OTHER OBJECTS
Goal.create(name: "House")
Goal.create(name: "Car")
Goal.create(name: "Education")
