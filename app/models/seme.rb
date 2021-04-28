class Seme < ApplicationRecord
  validates :character_id, { presence: true }

  belongs_to :character
end
