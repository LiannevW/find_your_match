require 'rails_helper'

feature 'Manage admin page', js: true do

  let!(:user) { create :user }

  scenario 'see list of all users when the user is an admin' do

  login_as user, :scope => :user

    visit root_path

    sleep(5)

    expect(page).to have_content('Here you can change the status of the users: ')
  end
end
