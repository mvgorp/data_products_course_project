# server.R
# 
# This Shiny app was made for the Coursera Course Project 
# regarding the "Building Data Products" course
# 
# @author: Martijn van Gorp
# @date: May 2016
#

# USe Shiny
library(shiny)

# Start server
shinyServer(function(input, output) {
    
    # Output Histogram
    output$histogram <- renderPlot({
        
        # Remove NA
        cleandata = airquality[complete.cases(airquality),]
        
        # Get data from selected columns
        d    <- cleandata[,input$display]
        
        # Generate bins based on input$bins from ui.R
        bins <- seq(min(d), max(d), length.out = input$bins + 1)
    
        # Draw histogram
        hist(d, breaks = bins, border = 'white', col = 'darkblue', main = paste('Histogram of',input$display), xlab = "")

    })

})
