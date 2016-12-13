#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

library(UsingR)
data(galton)

shinyServer(
    function(input, output) {
        # the output will be a plot with a slider.
        output$newHist <- renderPlot({
            # the Histogram is about ;ean squarre difference of galton's parent
            hist(galton$parent, xlab='parent height', col='lightgreen',main='Histogram')
            mu <- input$mu
            # the line that the user will be sliding before pressing sumit button
            lines(c(mu, mu), c(0, 250),col="yellow",lwd=6)
            # the difference between the two mean
            mse <- mean((galton$parent - mu)^2)
            text(65, 150, paste("mu = ", mu))
            text(65, 140, paste("MSE = ", round(mse, 2)))
        })

    }
)
