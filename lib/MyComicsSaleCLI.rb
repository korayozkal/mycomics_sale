class MyComicsSaleCLI
attr_accessor :username

def greet    
puts "========Hey! Welcome to the MyComicsSale App========"
puts "******************************************************************
               *********************************
           *******   *     *       *    *    *******
        *******   ***      **     **     ***   *******
      ******   *****       *********      *****    *****
    ******  ********       *********       ******    *****
   ****   **********       *********       *********   *****
  ****  **************    ***********     ************   ****
 ****  *************************************************  ****
****  ***************************************************  ****
****  ****************************************************  ****
****  ****************************************************  ****
 ****  ***************************************************  ****
  ****  *******     ****  ***********  ****     *********  ****
   ****   *****      *      *******      *      ********  ****
    *****   ****             *****             ******   *****
      *****   **              ***              **    ******
       ******   *              *              *   *******
         *******                                *******
            ********                         *******
               *********************************
                    *********************** "
puts "========Hey! Welcome to the MyComicsSale App========"
puts""
puts""    
puts""   
puts""  
#sleep(2.0)
puts "What's your name?"    
end    
    
def get_user_name
    name = gets.chomp
    self.username = name
    puts "Welcome, #{self.username}"
    puts "By using My Comics Sale App you will get the best comic book discounts"
    #sleep(4.0)
    system("clear")
  end
    
def start_scraping_wolverine    
puts "We are about to list all the discount campaings "
#sleep(3.0)
puts "Hold on we will ask for some help from Spider-man"
#sleep(3.0)
puts "It looks like Spider-Man is stuck in Lincoln Tunnel"
#sleep(3.0)
puts "But don’t worry, our app called X-Men" 
#sleep(3.0)
puts "Wolverine is here to scrape all the great discounts with his adamantium claws" 
#sleep(2.0)
MyComicsSaleScraper.scrape_comics_sale    
puts "Thanks to Wolverine, here are all the comics on sale"
#sleep(4.0)
end 

def print_all_sales
Sale.all.each_with_index do |sale, index|
puts "========COMICS ON SALE #{index +1} ========" 
puts "Book Title:"  
puts sale.book_title
puts sale.book_number
puts "Sales Price:"
puts sale.book_price 
puts "Original Price:"
puts sale.book_original_price

    end

end

#def single_description
#puts "which issue would you like to see"
#display_input = gets.chomp!
#need a condition with if else statements


#sale_input = Sale.all[display_input.to_i -1] 
#######call MyComicsSaleScraper.scrape_description  #########

#binding.pry
# this is where we want to access 
#end

def run
greet 
get_user_name
start_scraping_wolverine
print_all_sales

end
end