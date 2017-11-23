class Profile < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  #after_initialize :default_values

  def full_name
    "#{first_name} #{last_name}"
  end

end
