require 'rails_helper'

RSpec.describe Match, type: :model do
  describe "validations" do
    it "is invalid without a date" do
      match = Match.new(date: nil)
      match.valid?
      expect(match.errors).to have_key(:date)
    end
  end
end
