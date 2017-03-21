class Event < ApplicationRecord

  scope :past, -> (date){ where(date: Date.today > date) }
  scope :upcoming, -> (date){ where(date: Date.today <= date) }

end
