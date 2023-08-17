class Author < ApplicationRecord
    has_many :books, dependent: :destroy
    validates :authorname, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "Only alphabetic characters allowed" }
end
  