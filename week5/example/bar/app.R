library(shiny)

# Define UI for application that draws a histogram
navbarPage("Gender equality versus olmpic performance",
           tabPanel("corelation",
                    sidebarLayout(
                      sidebarPanel(
                        selectInput(inputId = "y",
                                    label = "Y-axis:",
                                    choices = c("imdb_rating", "imdb_num_votes", "critics_score", "audience_score", "runtime"),
                                    selected = "audience_score"),
                        selectInput(inputId = "y",
                                    label = "Y-axis:",
                                    choices = c("imdb_rating", "imdb_num_votes", "critics_score", "audience_score", "runtime"),
                                    selected = "audience_score")
                      ),
                      mainPanel(
                        plotOutput("plot")
                      )
                    )
           ),
           tabPanel("Summary",
                    verbatimTextOutput("summary")
           ),
           navbarMenu("More",
                      tabPanel("Table",
                               DT::dataTableOutput("table")
                      ),
                      tabPanel("About",
                               fluidRow(
                                 column(6,
                                        includeMarkdown("about.md")
                                 ),
                                 column(3,
                                        img(class="img-polaroid",
                                            src=paste0("http://upload.wikimedia.org/",
                                                       "wikipedia/commons/9/92/",
                                                       "1919_Ford_Model_T_Highboy_Coupe.jpg")),
                                        tags$small(
                                          "Source: Photographed at the Bay State Antique ",
                                          "Automobile Club's July 10, 2005 show at the ",
                                          "Endicott Estate in Dedham, MA by ",
                                          a(href="http://commons.wikimedia.org/wiki/User:Sfoskett",
                                            "User:Sfoskett")
                                        )
                                 )
                               )
                      )
           )
)