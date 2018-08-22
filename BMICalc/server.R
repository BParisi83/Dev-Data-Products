#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)



        bmicalc <- function(weight, height) {return(703 * weight / (height)^2 ) }
                


bmicategory <- function(bmicalc) {
       
        
        if(bmicalc < 18.5) {
                return("You are considered Underweight.")
        }
        else if(bmicalc < 25) {
                return("You are considerd Normal Weight.")
        }
        else if(bmicalc < 30) {
                return("You are considered Overweight.")
        }
        else {
                return("You are considered Obese.")
        }
}

shinyServer(
        function(input, output) {
                output$bmi <- renderPrint({bmicalc(input$weight, input$height)})
                output$label <- renderPrint({bmicategory(bmicalc(input$weight, input$height))})
        }
)