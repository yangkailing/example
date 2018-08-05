library(shiny)
library(ggplot2)
library(dplyr)
library(tidyr)
library(stringr)

# UI
ui <- fluidPage(
  sidebarLayout(
    
    # Input(s)
    sidebarPanel(
      
      # Select variable for y-axis
      selectInput(inputId = "y", 
                  label = "Y-axis:",
                  choices = c("score", "gen_ave", "female_primary_enrollment_rate", "Adolescent_fertility_rate", "total_fertility_rate","female_laborforc","female_literacy_rate","female_life_expectancy","female_expected_schoolingyears","female_primary_education"), 
                  selected = "score"),
      
      # Select variable for x-axis
      selectInput(inputId = "x", 
                  label = "X-axis:",
                  choices = c("score", "gen_ave", "female_primary_enrollment_rate", "Adolescent_fertility_rate", "total_fertility_rate","female_laborforc","female_literacy_rate","female_life_expectancy","female_expected_schoolingyears","female_primary_education"), 
                  selected =  "gen_ave")
    ),
    
    # Outputs
    mainPanel(
      plotOutput(outputId = "scatterplot"),
      textOutput(outputId = "correlation")
    )
  )
)

# Server
server <- function(input, output) {
  dm7 <-read.csv("clean_data1.csv")
  # Create scatterplot object the plotOutput function is expecting
  output$scatterplot <- renderPlot({
    ggplot(data = dm7, aes_string(x = input$x, y = input$y)) +
      geom_point()
  })
  
  # Create text output stating the correlation between the two ploted 
  output$correlation <- renderText({
    r <- round(cor(dm7[, input$x], dm7[, input$y], use = "pairwise"), 3)
    paste0("Correlation = ",r , ". Note: If the relationship between the two variables is not linear, the correlation coefficient will not be meaningful.")
  })
}

# Create a Shiny app object
shinyApp(ui = ui, server = server)