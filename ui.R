#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
        
        # Application title
        titlePanel("Predict Horsepower from MPG"),
        
        # Sidebar with a slider input for number of bins 
        sidebarLayout(
                sidebarPanel(
                        sliderInput("sliderMPG","What is the MPG of Car",10,35, value =20),
                        checkboxInput("Show_model1", "Show/Hide model1", value = TRUE),
                        checkboxInput("Show_model2", "Show/Hide model2", value = TRUE),
                        submitButton("Submit")
                        ),
                
                # Show a plot of the generated distribution
                mainPanel(
                        plotOutput("Plot1"),
                        h3("Predict Horsepower from Model1:"),
                        textOutput("pred1"),
                        h3("Predicted Horsepower from Model2:" ),
                        textOutput("pred2")
        )
)
))
