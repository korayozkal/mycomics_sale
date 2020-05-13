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
puts "What's your name?"    
end    
    
def get_user_name
    name = gets.chomp
    self.username = name
    puts "Welcome, #{self.username}"
    puts "By using My Comics Sale App you will get the best comic book discounts"
    system("clear")
  end
    
def start_scraping_wolverine    
puts "We are about to list all the discount campaings "
puts "Hold on we will ask for some help from Spider-man"    
puts "It looks like Spider-Man is stuck in Lincoln Tunnel"
puts "But don’t worry, our app called X-Men and Wolverine will be here to help us to scrape all the great discounts with his adamantium claws" 
MyComicsSaleScraper.scrape_comics_sale    
puts "Thanks to Wolverine, here are all the comics on sale"
end 

    
def run
greet 
get_user_name
start_scraping_wolverine
Sale.all.print_all_sales
    
end
end