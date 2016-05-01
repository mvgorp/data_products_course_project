# ui.R
# 
# This Shiny app was made for the Coursera Course Project 
# regarding the "Building Data Products" course
# 
# @author: Martijn van Gorp
# @date: May 2016
#

# Use shiny package
library(shiny)

# Start UI
shinyUI(fluidPage(

  # Title
  titlePanel("Airquality"),

  # Sidebar with a slider input for number of breaks
  sidebarLayout(
    sidebarPanel(
        
        # Add some helptext
        helpText("First, select the kind of data you want to see."),
        
        # Selectbox with the possible values (preselect Ozone)
        selectInput("display", 
            label = "What to display",
            choices = list("Ozone","Solar.R","Wind","Temp"),
            selected = "Ozone"),
        
        # Some more help text
        helpText("Second, select the number of bins that will be used for the barplot."),
        
        # Slider to select nr. of bins
        sliderInput("bins",
            "Number of bars:",
            min = 1,
            max = 50,
            value = 10)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("histogram")
    )
    
  )
  
))
