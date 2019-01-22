#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)


# Define UI for application that draws a histogram
shinyUI(
  dashboardPage(
    dashboardHeader(title = "Ini Dashboard Coba"),
    dashboardSidebar(
      menuItem("Dashboard"),
        menuSubItem("Dashboard 1"),
        menuSubItem("Dashboard 2"),
        menuSubItem("Dashboard 3"),
      menuItem("Deatail Analysis"),
      menuItem("Row Data"),
      menuItem("Setting Parameter"),
      sliderInput("bins","Number of Break",1,50,20)
    ),
    dashboardBody(
      fluidRow(

        box(fluidPage(
          
          # Copy the line below to make a file upload manager
          fileInput("file", label = h3("Upload File Here!")),
          
          hr(),
          fluidRow(column(4, verbatimTextOutput("value")))
          
        )),
        box(plotOutput("histogram"))
      )
    )
  )
)
  
