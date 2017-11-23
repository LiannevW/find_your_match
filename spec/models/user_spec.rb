require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "association with match" do
    let(:user) { create :user }
    let(:another_user) { create :user }

    let(:match_1) { create :match, date: Faker::Date.between(2.days.ago, Date.today), users: [user, another_user] }
    let(:match_2) { create :match, date: Faker::Date.between(2.days.ago, Date.today), users: [user, another_user] }
    let(:match_3) { create :match, date: Faker::Date.between(2.days.ago, Date.today), users: [user, another_user] }

    it "has matches" do
      expect(user.matches).to include(match_1)
      expect(another_user.matches).to include(match_1)
      expect(user.matches).to include(match_2)
      expect(another_user.matches).to include(match_2)
      expect(user.matches).to include(match_3)
      expect(another_user.matches).to include(match_3)
    end
end
end
