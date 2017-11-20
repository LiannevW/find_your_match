Profile.destroy_all
User.destroy_all

#Users
user_1 = User.create!(email: "user1@gmail.com", password:"1234567")
user_2 = User.create!(email: "user2@gmail.com", password:"12345678")
user_3 = User.create!(email: "user3@gmail.com", password:"123456789")
user_4 = User.create!(email: "user4@gmail.com", password:"1234567890")

#Profiles
profile_1 = Profile.create!(fist_name:"Marleen", last_name:"Kragting", is_admin:"", user_1)
profile_2 = Profile.create!(fist_name:"Laura", last_name:"van West", is_admin:"", user_2)
profile_3 = Profile.create!(fist_name:"Rudolf", last_name:"Spanneberg", is_admin:"", user_3)
profile_4 = Profile.create!(fist_name:"Charlotte", last_name:"van der Waals", is_admin:"", user_4)
