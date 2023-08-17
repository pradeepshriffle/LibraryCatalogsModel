class Publication < ApplicationRecord
    has_many :books
    validates :publicationname, presence: true,uniqueness: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "Only alphabetic characters allowed" }
end