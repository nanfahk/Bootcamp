#information
id <- c(1,2,3)
food <- c("1.Pizza", "2.Pasta", "3.Chicken")
price <- c(15, 10, 7)
food_with_price <- names(price) <- c("Pizza", "Pasta", "Chicken")

type <- c("1.pepperoni", "2.Hawaii", "3.Vegorama")
pasta <- c("1.cream", "2.spicy")
chicken_size <- c("1.Large","2.Medium", "3.Small")

#welcome to store
print("Welcome to Pizza Wow !")
print(" what's your name ? : ")
user <- readLines("stdin", n=1)
print(paste(" Hello", user))

#start order
print("What would you like to order today ?")
order <- 1
i <- 1
my_list <- c() 
while (order > 0) {
print (food)
  order1 <- readLines("stdin", n=1)
##Pizza
  if (order1 == 1 ) { 
      order <- order + 1
      print("What pizza would you like ?")
      print(type)
    types <- readLines("stdin", n=1)
        if(types == 1) {
         print("pizza peperoni")
          my_list[i] <- "pizza peperoni"
          i <- i + 1
       } else if( types == 2) {
         print("pizza hawaii")
          my_list[i] <- "pizza hawaii"
          i <- i + 1
       } else {
         print("pizza vegorama")
          my_list[i] <- "pizza vegorama"
          i <- i + 1
        }
##Pasta
} else if (order1 == 2) {
        order <- order + 1 
        print("what pasta would you like ?")
        print(pasta)
        pastaa <- readLines("stdin", n=1)
        if(pastaa == 1) {
          print("cream pasta")
          my_list[i] <- "cream pasta"
          i <- i + 1
        } else {
          print("spicy pasta")
          my_list[i] <- "spicy pasta"
          i <- i + 1
        }
##Chicken
} else if(order1 == 3 ) {
        order <- order + 1
        print("what size of chicken would you like ?")
        print(chicken_size)
        size <- readLines("stdin", n=1)
        if (size == 1) {
          print("chicken large box")
          my_list[i] <- "chicken large box"
          i <- i + 1
        } else if (size == 2) {
          print("chicken medium box")
          my_list[i] <-"chicken medium box"
          i <- i + 1
        } else {
          print("chicken small box")
          my_list[i] <- "chicken small box"
          i <- i + 1 
        }  
##if customer type wrong num
} else {
      print("Please choose number from menu") 
      order <- order + 1
       } 
   
 ##add more items
  print("You would like to add more items")
  print(" 1. yes  2.check out")
  order_2 <- readLines("stdin", n=1) 
    if (order_2 == 1)  {
        order <- order + 1
          } else { 
      print("summary order")
      print(my_list)
      break
    }
  }

 print("would you like to 1. pick up 2. delivery (+$15)") 
          pick <- readLines("stdin", n=1)
        if(pick == 1 ) {
          print("you can pick up at store in 15 minutes")
        } else {
          print("delivery will take about 25 minutes")
        }
           
  print("would you like to pay 1. by card  2. PayPal") 
          pay <- readLines("stdin", n=1)
        if(pick == 1 ) {
          print("please prepare you card")
          print("paid success !! Thank you")
        } else {
          print("please log in your PayPal account")
          print("paid success !! Thank you ")
        }
           



   
            



