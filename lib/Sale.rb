class Sale

  @@all = []

  attr_accessor :book_title, :book_number, :book_price, :book_original_price, :description_link, :book_description

  def initialize(book_title, book_number, book_price, book_original_price,description_link)
    @book_title = book_title
    @book_number = book_number
    @book_price = book_price
    @book_original_price = book_original_price
    @description_link = description_link
    @@all << self
  end

  def self.all
    @@all

end

end 