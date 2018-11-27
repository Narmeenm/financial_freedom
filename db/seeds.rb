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
User.destroy_all
Budget.destroy_all
CashFlow.destroy_all
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

puts "creating beautiful Ben users...."
## generate user seeds for all user seed info
User.create!(user_attributes)
zaneta = User.find_by(first_name: "Zaneta")
narmeen = User.find_by(first_name: "Narmeen")
cory = User.find_by(first_name: "Cory")


# Budget Seeds

## set budget seed info
budget_attributes = [
  {
    name: "Cat Expenses",
    description: "Meow mix, kitty litter, this shit stinks!",
    user: zaneta,
    amounts_cents: default: 0, null: false
  },
    {
    name: "Dog Expenses",
    description: "Meow mix, kitty litter, this shit stinks!",
    user: zaneta
    amounts_cents: default: 0, null: false
  }
  {
    name: "House Expenses",
    description: "cat mix, this shit stinks!",
    user: zaneta
    amounts_cents: default: 0, null: false
  }
  {
    name: "Car Expenses",
    description: "cat mix, this shit stinks!",
    user: zaneta
    amounts_cents: default: 0, null: false
  }
  {
    name: "Travel Expenses",
    description: "cat mix, this shit stinks!",
    user: zaneta
    amounts_cents: default: 0, null: false
  }
  {
    name: "Healthcare Expenses",
    description: "Dog food, this shit stinks!",
    user: cory
    amounts_cents: default: 0, null: false
  }
    name: "Emergency Expenses",
    description: "Dog food, this shit stinks!",
    user: cory
    amounts_cents: default: 0, null: false
  }
  {
    name: "Kids Expenses",
    description: "Dog food, this shit stinks!",
    user: cory
    amounts_cents: default: 0, null: false
  }
  {
    name: "Clothing Expenses",
    description: "Dog food, this shit stinks!",
    user: cory
    amounts_cents: default: 0, null: false
  }
  {
    name: "Party Expenses",
    description: "Dog food, this shit stinks!",
    user: cory
    amounts_cents: default: 0, null: false
  }
  {
    name: "Tax Expenses",
    description: "Damn, I am hungry!",
    user: narmeen
    amounts_cents: default: 0, null: false
  }
  {
    name: "Pets Expenses",
    description: "Damn, I am hungry!",
    user: narmeen
    amounts_cents: default: 0, null: false
  }
  {
    name: "Shoe Expenses",
    description: "Damn, I am hungry!",
    user: narmeen
    amounts_cents: default: 0, null: false
  }
  {
    name: "Synagogue Expenses",
    description: "Damn, I am hungry!",
    user: narmeen
    amounts_cents: default: 0, null: false
  }
  {
    name: "Church Expenses",
    description: "Damn, I am hungry!",
    user: narmeen
    amounts_cents: default: 0, null: false
  }

  # CORY TODO: 5 BUDGETS per user
]

puts "creating beautiful Ben budgets...."
Budget.create!(budget_attributes)
cat_budget = Budget.find_by(name: "Cat Expenses")
dog_budget = Budget.find_by(name: "Dog Expenses")
house_budget = Budget.find_by(name: "House Expenses")
car_budget = Budget.find_by(name: "Car Expenses")
travel_budget = Budget.find_by(name: "Travel Expenses")
healthcare_budget = Budget.find_by(name: "Healthcare Expenses")
emergency_budget = Budget.find_by(name: "Emergency Expenses")
transportation_budget = Budget.find_by(name: "Transportation Expenses")
kids_budget = Budget.find_by(name: "Kids Expenses")
clothing_budget = Budget.find_by(name: "Clothing Expenses")
party_budget = Budget.find_by(name: "Party Expenses")
tax_budget = Budget.find_by(name: "Tax Expenses")
pets_budget = Budget.find_by(name: "Pets Expenses")
shoe_budget = Budget.find_by(name: "Shoe Expenses")
synagogue_budget = Budget.find_by(name: "Synagogue Expenses")
church_budget = Budget.find_by(name: "Church Expenses")
#Cory TODO get the names of the budgets

# Cash Flow Seeds

## set cash flow seed info
cash_flow_attributes = [
  {
    nature: "expense",
    date: Date.today,
    user: zaneta,
    budget: cat_budget
  },
  {
    nature: "income"
    date: Date.today
    user: cory,
    budget: dog_budget
  }
  {
    nature: "expense"
    date: Date.today
    user: narmeen,
    budget: house_budget
  }
  {
    nature: "income"
    date: Date.today
    user: zaneta,
    budget: car_budget
  }
  {
    nature: "expense"
    date: Date.today
    user: cory,
    budget: travel_budget
  }
  {
    nature: "income"
    date: Date.today
    user: narmeen,
    budget: healthcare_budget
  }
  {
    nature: "expense"
    date: Date.today
    user: zaneta,
    budget: emergency_budget
  }
  {
    nature: "income"
    date: Date.today
    user: cory,
    budget: transportation_budget
  }
  {
    nature: "expense"
    date: Date.today
    user: narmeen,
    budget: kids_budget
  }
  {
    nature: "income"
    date: Date.today
    user: zaneta,
    budget: clothing_budget
  }
  {
    nature: "income"
    date: Date.today
    user: cory,
    budget: party_budget
  }
  {
    nature: "expense"
    date: Date.today
    user: narmeen,
    budget: tax_budget
  }
  {
    nature: "income"
    date: Date.today
    user: cory,
    budget: pets_budget
  }
  {
    nature: "expense"
    date: Date.today
    user: zaneta,
    budget: shoe_budget
  }
  {
    nature: "income"
    date: Date.today
    user: cory,
    budget: synagogue_budget
  }
  {
    nature: "expense"
    date: Date.today
    user: narmeen,
    budget: church_budget
  }
  #CORY TODO more of these
]

puts "creating beautiful Ben budgets.."
CashFlow.create!(cash_flow_attributes)



#CORY TODO MAKE GOAL SEEDS SAME AS OTHER OBJECTS
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
goal6.save!

# CORY TODO: GOALS USERS SEEDS
# CORY TODO: TAGGINGS SEEDS
# CORY TODO: TAGS SEED
