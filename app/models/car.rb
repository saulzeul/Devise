class Car < ApplicationRecord
  has_secure_token

  validates :name, presence: true
end
