#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$histogram <- renderPlot({
    hist(faithful$eruptions,breaks = input$bins)
  
    
#    # generate bins based on input$bins from ui.R
#    x    <- faithful[, 2] 
#    bins <- seq(min(x), max(x), length.out = input$bins + 1)
#    
#    # draw the histogram with the specified number of bins
#    hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
  })
  
   
  function(input, output) {
    
    # You can access the value of the widget with input$file, e.g.
    output$value <- renderPrint({
      str(input$file)
    })
    
  }
  
  
})
