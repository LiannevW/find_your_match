require 'rails_helper'

feature 'Manage student page', js: true do

  let!(:user) { create :user }

  scenario 'not see list of all users when the user is a student' do

  login_as user.profile.is_admin = false, :scope => :user

    visit root_path

    sleep(5)

    expect(page).to_not have_content('Here you can change the status of the users: ')
  end
end
