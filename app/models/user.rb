class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_initialize :default_values

  has_one :profile, dependent: :destroy
  has_and_belongs_to_many :matches

  def has_profile?
    profile.present? && profile.persisted?
  end

  def full_name
    profile.full_name
  end

  def default_values
    self.profile ||= Profile.create!(first_name: "Mr.", last_name: "Student")
  end
end
