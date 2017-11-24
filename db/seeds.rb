Match.destroy_all
Profile.destroy_all
User.destroy_all
Day.destroy_all


# Profiles
profile_1 = Profile.create!(first_name: "Marleen", last_name: "Kragting" )
profile_2 = Profile.create!(first_name: "Laura", last_name: "van West" )
profile_3 = Profile.create!(first_name: "Rudolf", last_name: "Spanneberg" )
profile_4 = Profile.create!(first_name: "Charlotte", last_name: "van der Waals" )
profile_5 = Profile.create!(first_name: "Valerii", last_name: "Matveev" )
profile_6 = Profile.create!(first_name: "Margarita", last_name: "Sokol" )
profile_7 = Profile.create!(first_name: "Anna", last_name: "Angel" )

# Users
user_1 = User.create!(email: "user1@gmail.com", password: "1234567", profile: profile_1, is_admin: true  )
user_2 = User.create!(email: "user2@gmail.com", password: "12345678", profile: profile_2, is_admin: false )
user_3 = User.create!(email: "user3@gmail.com", password: "123456789", profile: profile_3, is_admin: false )
user_4 = User.create!(email: "user4@gmail.com", password: "1234567890", profile: profile_4, is_admin: false )
user_5 = User.create!(email: "user5@gmail.com", password: "7654321", profile: profile_5, is_admin: false )
user_6 = User.create!(email: "user6@gmail.com", password: "87654321", profile: profile_6, is_admin: false )
user_7 = User.create!(email: "user7@gmail.com", password: "987654321", profile: profile_7, is_admin: false )
