class BookStub < Book
  has_one :book
  validates :title, presence: true,
                    length: { minimum: 5 }
            :
end
