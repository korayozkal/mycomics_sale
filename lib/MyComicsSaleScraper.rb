require 'pry'

class MyComicsSaleScraper

def self.scrape_comics_sale
site = ("https://www.comixology.com/comics-sale")
scraping_comics_sale = Nokogiri::HTML(open(site))
sale_elements = scraping_comics_sale.css('.content-item')

sale_elements.map do |element|

  book_title = element.css('.content-title.cu-alc').text
  book_number = element.css('.content-subtitle.cu-alc').text
  book_price = element.css('.item-price').text
  book_original_price = element.css('.item-full-price.cu-alc').text
  description_link = scraping_comics_sale.css('.content-img-link').attr('href').value
  new_sale = Sale.new(book_title,book_number, book_price,book_original_price, description_link)
 end
  end

def self.scrape_description(sale)

scraping_comics_sale = Nokogiri::HTML(open(sale.description_link))
new_description = scraping_comics_sale.css('.item-description').text
sale.book_description = new_description
end
  end
  