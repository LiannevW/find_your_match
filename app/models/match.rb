class Match < ApplicationRecord
  validates :date, presence: true

  has_and_belongs_to_many :users
end
