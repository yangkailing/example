library(shiny)
library(markdown)


# Define UI for application that plots features of movies
ui <- fluidPage(
  titlePanel("Introduction"),
  fluidRow(
    column(10,
           includeMarkdown("introduction.md")
    )
  )
)

# Define server function required to create the scatterplot
server <- function(input, output) {
  
}

# Create the Shiny app object
shinyApp(ui = ui, server = server)