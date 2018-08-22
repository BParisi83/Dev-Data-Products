#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


shinyUI(
        pageWithSidebar(
                headerPanel("Body mass index (BMI) calculator
                            BMI is"),
                sidebarPanel(
                        #selectInput('units', 'Which type of units are you using?', c('Metric (kg, cm)', 'Standard (lbs, in) ')),
                        numericInput('weight', 'Your Weight in pounds ', 100, min = 0, max = 1000, step = 1),
                        numericInput('height', 'Your Height in inches', 50, min = 12, max = 300, step = 1),
                        submitButton('Calculate')
                ),
                mainPanel(
                        h3('Results'),
                        h3('Your BMI is'), 
                        verbatimTextOutput("bmi"),
                        verbatimTextOutput("label")
                        
                )
                
        )
)