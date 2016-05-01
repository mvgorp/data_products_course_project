
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$histogram <- renderPlot({
    
    cleandata = airquality[complete.cases(airquality),]
    
    # generate bins based on input$bins from ui.R
    d    <- cleandata[,input$display]
    bins <- seq(min(d), max(d), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(d, breaks = bins, border = 'white', col = 'darkblue', main = input$display)

  })

})
