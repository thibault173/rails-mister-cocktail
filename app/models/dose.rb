class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, presence: true
  validates :ingredient, presence: true

  validates_uniqueness_of :ingredient, scope: :cocktail

  belongs_to :cocktail
  belongs_to :ingredient
end


# A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique.

# validates :country, uniqueness: { scope: [:medium, :another_medium] }
