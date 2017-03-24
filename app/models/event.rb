class Event < ApplicationRecord

  scope :upcoming, -> { where("date > ?", DateTime.now) }
  scope :past, -> { where("date <= ?", DateTime.now) }

  def talk?
    self.talk
  end

  def workshop?
    self.workshop
  end

  def panel?
    self.panel
  end

end
