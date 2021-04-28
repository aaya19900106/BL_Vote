class Character < ApplicationRecord
  validates :name, presence: true
  has_many :ukes, dependent: :destroy
  has_many :semes, dependent: :destroy
end
