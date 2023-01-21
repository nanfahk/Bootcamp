##WELCOME
print("Welcome to Pao Ying Chup!")
print("What is your name?")
name <- readLines("stdin", n=1 )

print(paste("Hello", name ) )
    
print("Are you ready.. Lets start!")
print("...")
print("...")

##chioces

pao <- c("1.Scissor ", "2. Hammer", "3.Paper")

##vector keep result
i <- 1
round <- 1
result <- c()
ran <- function() { 
  sample(1:3, 1) 
  }
 
while (round > 0) {
  print("type the number of your choice")
  print(pao)
  round <- readLines("stdin", n=1 )
  ##scissor
  if (round == 1) { 
    print("you choose Scissor")
    
    ran() 
      if (ran() == 1) {
        print("AI choose Scissor")
        print("fair")
        result[i] <- "fair"
        i <- i + 1
        } else if (ran() == 2) { 
        print("AI choose Hammer")
        print("lose")
        result[i] <- "lose"
        i <- i + 1
        } else {
        print("AI choose Paper")
        print("win")
        result[i] <- "win"
        i <- i + 1
        }
  ##hammer
} else if (round == 2) {
    print("you choose Hammer")
    
    ran()
    if (ran() == 1) {
      print("AI choose Scissor")
      print("win")
      result[i] <- "win"
      i <- i + 1
    } else if (ran() == 2) {
      print("AI choose Hammer")
      print("fair")
      result[i] <- "fair"
      i <- i + 1
    } else {
      print("AI choose Paper")
      print("lose")
      result[i] <- "lose"
      i <- i + 1
    }
} else if (round == 3) {
    print("you choose Paper")
    
    ran()
    if (ran() == 1) {
      print("AI choose Scissor")
      print("lose")
      result[i] <- "lose"
      i <- i + 1
    } else if (ran() == 2) {
      print("AI choose Hammer")
      print("win")
      result[i] <- "win"
      i <- i + 1
    } else {
      print("AI choose Paper")
      print("fair")
      result[i] <- "fair"
      i <- i + 1
      }
} else {
    
    print("please choose a number between 1 and 3")
  }
##create dataframe
  results <- data.frame(result)
  
  print("You want to play again?")
  print(" 1. yes   2. later ")
  again <- readLines("stdin", n=1 )
  if (again == 1) {
    round <- round 
  } else if (again == 2) {
    print(paste("You played",length(result)," times"))
    print(results)
       
    break
  } else {
    print(paste("Ok Lets play", again,"times"))
    
  }
}






