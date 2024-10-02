## Game_pao_ying_chup
playgame  <- function() {
  detail <- data.frame(
    no = 1:4,
    choose = c("r", "s", "p", "q"),
    mean = c("rock", "scissors", "paper", "quit")
  )
  print("Hi! What you name")
  userinput <- readLines("stdin", n=1)
  print(userinput)
  playerwin <- 0
  botwin <- 0
  tie <- 0
  while(TRUE) {
  print(detail)
  print("player choose")
  bot <- c("r","s","p")
  player <- readLines("stdin", n=1)
  botplay <- sample(bot,1)
  if(player == "r" & botplay== "s"|
     player == "s" & botplay == "p"|
     player == "p" & botplay == "r"
    ) {print ("You Win!")
       print(paste("Bot choose", botplay))
       playerwin <- playerwin +1
     } else if (
     player == "r" & botplay == "p"|
     player == "p" & botplay == "s"|
     player == "s" & botplay == "r"
    ) {print ("Bot win!") 
       print(paste("Bot choose", botplay))
       botwin <- botwin +1
      } else if (
     player == "r" & botplay == "r"|
     player == "p" & botplay == "p"|
     player == "s" & botplay == "s"
      ) {print ("Tied")
        print(paste("Bot choose", botplay))
         tie <- tie +1
      } else if (player == "q") {break}
  }
print(paste("win", playerwin))
print(paste("lose", botwin))
print(paste("tie", tie))
}

playgame()
