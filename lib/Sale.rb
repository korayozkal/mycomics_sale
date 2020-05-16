class Sale

  @@all = []

  attr_accessor :book_title, :book_number, :book_price, :book_original_price

  def initialize(book_title, book_number, book_price, book_original_price)
    @book_title = book_title
    @book_number = book_number
    @book_price = book_price
    @book_original_price = book_original_price
    @@all << self
  end

  def self.all
    @@all

end

def self.print_all_sales
Sale.all.each do |sale|
puts "Book Title:"  
puts sale.book_title
puts sale.book_number
puts "Sales Price:"
puts sale.book_price 
puts "Original Price:"
puts sale.book_original_price
puts "========COMICS ON SALE========"
    
    end
  end
end 