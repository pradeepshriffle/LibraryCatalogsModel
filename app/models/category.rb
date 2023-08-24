class Category < ApplicationRecord
    has_many :books
    validates :categorytype, presence: true,uniqueness: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "Only alphabetic characters allowed" }
end