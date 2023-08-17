class Author < ApplicationRecord
    has_many :books, dependent: :destroy
    validates :authorname, presence: true, uniqueness: true,format: { with: /\A[a-zA-Z]+\z/, message: "Only alphabetic characters allowed" }
    validates :authoremail ,presence:true,uniqueness:true,format:{
        with:/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,message: "plz enter valid email"}

     
end
  