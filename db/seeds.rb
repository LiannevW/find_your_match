Profile.destroy_all
User.destroy_all


#Profiles
profile_1 = Profile.create!(first_name: "Marleen", last_name: "Kragting", is_admin: true )
profile_2 = Profile.create!(first_name: "Laura", last_name: "van West", is_admin: false )
profile_3 = Profile.create!(first_name: "Rudolf", last_name: "Spanneberg", is_admin: false )
profile_4 = Profile.create!(first_name: "Charlotte", last_name: "van der Waals", is_admin: false )
profile_5 = Profile.create!(first_name: "Valerii", last_name: "Matveev", is_admin: false )
profile_6 = Profile.create!(first_name: "Margarita", last_name: "Sokol", is_admin: false )
profile_7 = Profile.create!(first_name: "Anna", last_name: "Angel", is_admin: false )

#Users
user_1 = User.create!(email: "user1@gmail.com", password: "1234567", profile: profile_1 )
user_2 = User.create!(email: "user2@gmail.com", password: "12345678", profile: profile_2 )
user_3 = User.create!(email: "user3@gmail.com", password: "123456789", profile: profile_3 )
user_4 = User.create!(email: "user4@gmail.com", password: "1234567890", profile: profile_4 )
user_5 = User.create!(email: "user5@gmail.com", password: "7654321", profile: profile_5 )
user_6 = User.create!(email: "user6@gmail.com", password: "87654321", profile: profile_6 )
user_7 = User.create!(email: "user7@gmail.com", password: "987654321", profile: profile_7 )
