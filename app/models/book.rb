class Book < ApplicationRecord
  belongs_to :author
  belongs_to :category
  belongs_to :publication

  validates :booktitle, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z0-9\s]+\z/, message: "Only alphanumeric characters allowed" }
  validates :bookyear, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1500, less_than_or_equal_to: Date.current.year }
  after_create :book_success
  after_destroy :book_destroy  

  private 
  def book_success
    puts "Book added Sucessfully"
  end 
  def book_destroy
    puts "Book destroy Sucessfully"
  end  
end
