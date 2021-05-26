class SpeedforceUser < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :emergency_contact_name, presence: true
  validates :emergency_contact_phone, presence: true
  validates :emergency_contact_email, presence: true
end
