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
    
  # Help texts
  helpText("With this application you can view the Airquality dataset available in R; this data is displayed in a Histogram. You can manipulate the Histogram through an easy-to-use Panel."),
  
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
        helpText("Second, select the number of bins that will be used for the histogram"),
        
        # Slider to select nr. of bins
        sliderInput("bins",
            "Number of bins:",
            min = 1,
            max = 50,
            value = 10)
    ),
    
    # Show a plot of the generated Histogram
    mainPanel(
        plotOutput("histogram")
    )
    
  )
  
))
