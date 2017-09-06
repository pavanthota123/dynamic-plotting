#ui.R
library(shiny)
library(RColorBrewer)
shinyUI(fluidPage(
  titlePanel("Project Dataset"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("p", "Select column of project dataset:",
                   list("Type of Project"='a', "LOB/PF"='b', "Customer Type"='c'))
      
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Bar", plotOutput("distPlot")), 
        tabPanel("Pie", plotOutput("distPlot2")),
        tabPanel("Summary", verbatimTextOutput("summary")),
        tabPanel("Table", tableOutput("table"))
      )
      
    )
  )))
