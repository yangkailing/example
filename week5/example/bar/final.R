library(shiny)
library(leaflet)

# Define UI 
ui<-  navbarPage("Gender equality versus olmpic performance",
                 tabPanel("About",
                          fluidPage(
                            
                            # Sidebar layout with a input and output definitions
                            sidebarLayout(
                              
                              # Inputs
                              
                              
                              
                              # Outputs
                              mainPanel(
                                plotOutput(outputId = "scatterplot",height = 200),
                                plotOutput(outputId = "densityplot",height = 200)
                                
                              )
                            )
                          )
                          
                 ),
                 tabPanel("map",
                          sidebarLayout(
                            sidebarPanel(
                              selectInput(inputId = "y",
                                          label = "Y-axis:",
                                          choices = c("imdb_rating", "imdb_num_votes", "critics_score", "audience_score", "runtime"),
                                          selected = "audience_score"),
                              
                              sliderInput(inputId = "year",
                                          label = "Choose the year:",
                                          min=1990,max=2016,value=2000,step=2),
                              
                              radioButtons("medal", "medal",
                                             c("yes"="y", "no"="n"))
                            ),
                            mainPanel(
                              plotOutput("plot")
                            )
                          )
                 ),
                 tabPanel("correlation",
                          sidebarLayout(
                            
                            # Input(s)
                            sidebarPanel(
                              
                              # Select variable for y-axis
                              selectInput(inputId = "y", 
                                          label = "Y-axis:",
                                          choices = c("imdb_rating", "imdb_num_votes", "critics_score", "audience_score", "runtime"), 
                                          selected = "audience_score"),
                              
                              # Select variable for x-axis
                              selectInput(inputId = "x", 
                                          label = "X-axis:",
                                          choices = c("imdb_rating", "imdb_num_votes", "critics_score", "audience_score", "runtime"), 
                                          selected = "critics_score")
                            ),
                            
                            # Outputs
                            mainPanel(
                              plotOutput(outputId = "scatterplot"),
                              textOutput(outputId = "correlation")
                            )
                          )
                 )
              )
# Define server function 
function(input, output, session) {
  output$plot <- renderPlot({
    plot(cars, type=input$plotType)
  })
  
  # Create scatterplot object the plotOutput function is expecting
  output$scatterplot <- renderPlot({
    ggplot(data = movies, aes_string(x = input$x, y = input$y)) +
      geom_point()
  })
  
  # Create text output stating the correlation between the two ploted 
  output$correlation <- renderText({
    r <- round(cor(movies[, input$x], movies[, input$y], use = "pairwise"), 3)
    paste0("Correlation = ",r , ". Note: If the relationship between the two variables is not linear, the correlation coefficient will not be meaningful.")
  })
  #create basic information
  output$about<-renderText({paste0()})
}

# Create the Shiny app object
shinyApp(ui = ui, server = server)