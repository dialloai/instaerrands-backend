# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

Errand.destroy_all

ErrandRunner.destroy_all


#USER

user1= User.create(first_name:"Aicha", last_name:"Diallo", username:" ", password:" ", user_type:"errand creator")

user2= User.create(first_name:"Joseph", last_name:"Arias", username:" ", password:" ", user_type:"errand creator")

user3= User.create(first_name:"Jenny", last_name:"Ingram", username:" ", password:" ", user_type:"errand creator")

user4= User.create(first_name:"Amanda", last_name:"Watson", username:" ", password:" ", user_type:"errand runner")

user5= User.create(first_name:"Mike", last_name:"Bloomberg", username:" ", password:" ", user_type:"errand runner")

user6= User.create(first_name:"Paul", last_name:"Vergas", username:" ", password:" ", user_type:"errand runner")


errand1= Errand.create(errand_name:"Pick up dry cleaning", location:"City Cleaners- 740 5th St NW, Washington, DC 20001", errand_order:DateTime.new(2019,12,20), pay:15, priority:"Low", notes:"tell them it is for Diallo", user_id:user1.id)

errand2= Errand.create(errand_name:"Mow my lawn", location:"2000 N Street, DC", errand_order:DateTime.new(2020,01,15), pay:45, priority:"High", notes:"The mower is at the entrance of my garage on the right. Need it mowed by 8 pm please.",user_id:user2.id)

errand3= Errand.create(errand_name:"pick up groceries from Trader Joes", location:"350 Florida Ave NE, Washington, DC 20002", errand_order:DateTime.new(2020,01,18), pay:40, priority:"High", notes:"I need the following: 1)Organic Apples, 2) Cheese platter, 3) A dozzen roses", user_id:user3.id)

errand4= Errand.create(errand_name:"Drop off large package at closest UPS location", location:"43537 Q Street",errand_order:DateTime.new(2020,01,20), pay:30, priority:"Low", notes:"The box is at my door, please drop it off at closest UPS with tracking and send details to me", user_id:user1.id)

errand5= Errand.create(errand_name:"Dry cleaning drop off and pick up", location:"Gallery Cleaners, 450 Massachusetts Ave NW, Washington, DC 20001", errand_order:DateTime.new(2020,01,05), pay:55, priority:"low", notes:"Price includes errand service cost and dry cleaning cost", user_id:user2.id)

errand6= Errand.create(errand_name:"Pet sitting", location:"846 Delaware Avenue, DC", errand_order:DateTime.new(2020,01,10), pay:30, priority:"High", notes:"House sit my cat that loves company for 2 hours. Keys are under the welcome mat.", user_id:user3.id)

errand_runner1= ErrandRunner.create(user_id:user1.id, errand_id:errand1.id)

errand_runner2= ErrandRunner.create(user_id:user2.id, errand_id:errand2.id)

errand_runner3= ErrandRunner.create(user_id:user3.id, errand_id:errand3.id)

errand_runner4= ErrandRunner.create(user_id:user1.id, errand_id:errand4.id)

errand_runner5= ErrandRunner.create(user_id:user2.id, errand_id:errand5.id)

errand_runner6= ErrandRunner.create(user_id:user3.id, errand_id:errand6.id)