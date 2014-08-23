library(shiny)
library(datasets)

shinyServer(
        function(input, output) {
                df<- mtcars
                # Reactive expression to compose a data frame containing all of the values
                datasetInput <- reactive({
                        if (input$am=="Manual") {df2 <- subset(df, df$am == 1)}
                        else (df2 <- subset(df, df$am == 0))
                        df2 <- df2[order(df2$mpg, decreasing=TRUE), ]
                })
                
                # Show the first "n" observations
                output$view <- renderTable({
                        head(datasetInput(), n = input$obs)
                })
                
        }
)