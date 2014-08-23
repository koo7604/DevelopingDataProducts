library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Best Fuel Efficient Car"),
        sidebarPanel(
                selectInput("am", "Choose AT/MT:", 
                            choices = c("Automatic", "Manual")),
        numericInput("obs", "Number of cars to view:", 5)
        ),
        mainPanel(
                h4("How this app works..."),
                h5("This app displays the ranking of fuel efficient automobiles.
                Choose AT/MT and number to view from the left side bar.
                The data was extracted from the 1974 Motor Trend US magazine."),
                h4("Result"),
                tableOutput("view")
        )
))