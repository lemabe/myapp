#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(pageWithSidebar(
    # title of the application
    headerPanel("Galton parent plot"),
    sidebarPanel(
        # setting the value of min and max
        sliderInput('mu', 'Guess at the mean',value = 70, min = 64, max = 73, step = 0.05),
        # Initited the submit button
        submitButton("Submit")
    ),
    mainPanel(
        plotOutput('newHist')
    )
))




