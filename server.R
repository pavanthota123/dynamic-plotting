#server.R
library(shiny)
shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    if(input$p=='a'){
      i<-67
    }
    
    if(input$p=='b'){
      i<-37
    }
    
    if(input$p=='c'){
      i<-33
    }
    
    
    
    x    <-table( project[, i])
    
    barplot(x,col='tomato',border='cornflowerblue')})
  
  output$distPlot2 <- renderPlot({
    if(input$p=='a'){
      i<-67
    }
    
    if(input$p=='b'){
      i<-37
    }
    
    if(input$p=='c'){
      i<-33
    }
    
    
    
    x    <-table( project[, i])
    
    pie(x,col=brewer.pal(n='8',name = "Paired"))
  })
  output$summary <- renderPrint({
    if(input$p=='a'){
      i<-67
    }
    
    if(input$p=='b'){
      i<-37
    }
    
    if(input$p=='c'){
      i<-33
    }
    
    summary(project[i])
  })
  
  output$table <- renderTable({
    data.frame(project)
  })
})
