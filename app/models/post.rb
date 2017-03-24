class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  
  self.per_page = 30
end
