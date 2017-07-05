
class Book < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :author_name, presence: true,
                    length: { minimum: 4 }
  validates :cover, presence: true
end
