class Uke < ApplicationRecord
  validates :character_id, { presence: true }

  belongs_to :character
end
