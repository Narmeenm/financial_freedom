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
Category.destroy_all
UserGoal.destroy_all
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

# Category Seeds
## set category seed info
category_attributes = [
  {name: 'Food', photo: 'https://i.ibb.co/QJ2Dh8w/food.png'},
  {name: 'Bills', photo: 'https://i.ibb.co/MPNrP04/bills.png'},
  {name: 'Pets', photo: 'https://i.ibb.co/zNQL0Lp/pet.png'},
  {name: 'Shopping', photo: 'https://i.ibb.co/GMhR6b6/shopping.png'},
  {name: 'Education', photo: 'https://i.ibb.co/SKBsQqg/education.png'},
  {name: 'Going out', photo: 'https://i.ibb.co/WcxrjHc/goingout.png'},
  {name: 'Home', photo: 'https://i.ibb.co/CVwWnTd/house.png'},
  {name: 'Transport', photo: 'https://i.ibb.co/hDD7nWK/transport.png'},
  {name: 'Others', photo: 'https://i.ibb.co/92Bz7yM/others.png'}

]

puts "creating goal's categories...."
Category.create!(category_attributes)
food = Category.find_by(name: "Food")
bills = Category.find_by(name: "Bills")
pets = Category.find_by(name: "Pets")
shopping = Category.find_by(name: "Shopping")
education = Category.find_by(name: "Education")
going_out = Category.find_by(name: "Going out")
home = Category.find_by(name: "Home")
transport = Category.find_by(name: "Transport")
others = Category.find_by(name: "Others")




# Budget Seeds
## set budget seed info
budget_attributes = [
  {
    category_id: food.id,
    name: "Healthy&Yummy!",
    description: "Cat ipsum dolor sit amet, burrow under covers so allways wanting food. Steal the warm chair right after you get up. Scratch the furniture make meme, make cute face for bathe private parts with tongue then lick owner's face pushes butt to face lick plastic bags fat baby cat best buddy little guy or love you, then bite you. That box?",
    user: zaneta,
    amount: 500
  },
  {
    category_id: bills.id,
    name: "The worst category...",
    description: "That box? i can fit in that box i just saw other cats inside the house and nobody ask me before using my litter box instantly break out into full speed gallop across the house for no reason.",
    user: zaneta,
    amount: 750
  },
  {
    category_id: pets.id,
    name: "Because I love them!",
    description: "Slap owner's face at 5am until human fills food dish pet me pet me pet me pet me, bite, scratch, why are you petting me, meow meow mama yet cats go for world domination plays league of legends fooled again thinking the dog likes me.",
    user: zaneta,
    amount: 500
  },
  {
    category_id: shopping.id,
    name: "Stressed, depressed but well dressed!",
    description: "Eat and than sleep on your face mice so eat prawns daintily with a claw then lick paws clean wash down prawns with a lap of carnation milk then retire to the warmest spot on the couch to claw at the fabric before taking a catnap yet purr yet sit on human they not getting up ever yet hide at bottom of staircase to trip human.",
    user: zaneta,
    amount: 500
  },
  {
    category_id: education.id,
    name: "The most important!",
    description: "Furrier and even more furrier hairball the fat cat sat on the mat bat away with paws but refuse to leave cardboard box or purr when being pet so i cry and cry and cry unless you pet me, and then maybe i cry just for fun",
    user: zaneta,
    amount: 500
  },
  {
    category_id: going_out.id,
    name: "For fun!",
    description: "Scoot butt on the rug go into a room to decide you didn't want to be in there anyway find box",
    user: zaneta,
    amount: 500
  },
  {
    category_id: home.id,
    name: "Let's make it beautiful",
    description: "a little too small and curl up with fur hanging out twitch tail in permanent irritation i like frogs and 0 gravity so small kitty warm kitty little balls of fur nap all day.",
    user: zaneta,
    amount: 500
  },
  {
    category_id: transport.id,
    name: "Tube&bus",
    description: "Cats woo. Hit you unexpectedly instead of drinking water from the cat bowl, make sure to steal water from the toilet for going to catch the red dot today going to catch the red dot today for meowing non stop for food.",
    user: zaneta,
    amount: 500
  },
  {
    category_id: others.id,
    name: "Some random things",
    description: "Mrow catty ipsum stare at guinea pigs yet woops poop hanging from butt must get rid run run around house drag poop",
    user: zaneta,
    amount: 500
  }

]

puts "creating smart budgets...."
Budget.create!(budget_attributes)


# Cash Flow Seeds

## set cash flow seed info

zaneta_budgets = Budget.where(user_id: zaneta.id)
zaneta_budgets.each do |budget|
  3.times do
    CashFlow.create!(date: Date.today - rand(1..3), user: zaneta, budget: budget)
  end
end

# User.all.each do |user|
#  5.times do
#    CashFlow.create!(date: Date.today - rand(1..3), user: user, budget: user.budgets.sample)
#  end
# end


puts "creating smart cash flows.."



#CORY TODO MAKE GOAL SEEDS SAME AS OTHER OBJECTS
Goal.create(name: "House", image_goal: 'https://i.ibb.co/9tJ68dw/homegoal.png' )
Goal.create(name: "Car", image_goal: 'https://i.ibb.co/D8pVzsB/goal-car.png')
Goal.create(name: "Education", image_goal: 'https://i.ibb.co/tD1rV3B/edugoal.png')
