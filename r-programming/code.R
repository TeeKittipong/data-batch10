## chatbot_pizza_order

chatbotpizza <- function() {

pizza_topping <- data.frame(
    id = 1:3,
    topping = c("cheese", "bacon", "sea food"),
    prize = c(100, 150, 300)
  )
print("Welcome to pizza ")
print(pizza_topping)
print("select topping choose 1 to 3")
pizza_topping <- as.numeric(readLines("stdin", n=1))
     if (pizza_topping ==1) {price <- 100
    } else if (pizza_topping == 2) {price <- 150
    } else if (pizza_topping == 3) {price <- 200
    } else {print ("select 1 to 3")
    }
add_drink <- data.frame(
    id = 1:3,
    drink = c("coke", "water", "no"),
    prize = c( 50, 20, 0)
  )
print(add_drink)
print("add_drink 1 to 3")
add_drink <- as.numeric(readLines("stdin", n=1))
     if (add_drink ==1) {price <- price + 50
    } else if (add_drink ==2) {price <- price + 20
    } else if (add_drink ==3) {price <- price 
    } else {print ("select 1 to 3")}
print("price")
print(price)
print("Thank you")
}
chatbotpizza()
