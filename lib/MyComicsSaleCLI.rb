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
sleep(4.0)
puts "What's your name?"    
end    
    
def get_user_name
    name = gets.chomp
    self.username = name
    puts "Welcome, #{self.username}"
    puts "By using My Comics Sale App you will get the best comic book discounts"
    sleep(4.0)
    system("clear")
  end
    
def start_scraping_wolverine    
puts "We are about to list all the discount campaings "
sleep(4.0)
puts "Hold on we will ask for some help from Spider-man"
sleep(4.0)
puts "It looks like Spider-Man is stuck in Lincoln Tunnel"
sleep(4.0)
puts "But don’t worry, our app called X-Men" 
sleep(4.0)
puts "Wolverine is here to scrape all the great discounts with his adamantium claws" 
sleep(4.0)
MyComicsSaleScraper.scrape_comics_sale    
puts "Thanks to Wolverine, here are all the comics on sale"
sleep(4.0)
end 

    
def run
greet 
get_user_name
start_scraping_wolverine
Sale.print_all_sales

end
end