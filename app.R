library(shiny)

my_ui <- fluidPage( 
  h1("Hello, welcome to my very shiny page"),
  p("Not shiny enough for you? Here, maybe this will help"),
  img(src = "https://ipub.com/wp-content/uploads/2015/10/shinydiamond.jpg"),
  p("What? A diamond not shiny enough?"),
  textInput("response", label = "Fine, what do you consider shiny?"),
  textOutput("message")
)

my_server <- function(input, output) {
  output$message <- renderText({
    return(paste0(input$response, "? ", "That's ridiculous.."))
  })
}

shinyApp(ui = my_ui, server = my_server)
