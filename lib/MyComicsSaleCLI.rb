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
      sleep(4.0)
      system("clear")
    end
  def start_scraping_wolverine
  puts "We are about to list all the discount campaings "
  sleep(3.0)
  puts "Hold on we will ask for some help from Spider-man"
  sleep(3.0)
  puts "It looks like Spider-Man is stuck in Lincoln Tunnel"
  sleep(3.0)
  puts "But don't worry, our app called X-Men"
  sleep(3.0)
  puts "Wolverine is here to scrape all the great discounts with his adamantium claws"
  sleep(2.0)
  MyComicsSaleScraper.scrape_comics_sale
  puts "Thanks to Wolverine, here are all the comics on sale"
  sleep(4.0)
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
  def single_description
    puts "Please enter Sale campaign number to see the book description"
    display_input = gets.chomp
    selected_sale = Sale.all[display_input.to_i - 1] if Sale.all[display_input.to_i - 1].is_a?(Sale) && display_input.to_i > 0
    MyComicsSaleScraper.scrape_description(selected_sale)
    if selected_sale
      puts "#{selected_sale.book_description}"
      puts
      puts
      puts
      puts "Would you like to see another issue? (y/n)"
      input = gets.chomp.downcase
      if input == "y"
        single_description
      else
        puts "Thanks for using MyComicsSale App."
        sleep(3)
      end
    else
      puts "Error Message"
      single_description
    end
  end
  def run
  greet
  get_user_name
  start_scraping_wolverine
  print_all_sales
  single_description
  end
  end