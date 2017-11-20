class Profile < ApplicationRecord
  

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :is_admin, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
