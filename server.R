shinyServer(
        function(input, output) {
                ## display the input income
                output$inputValue <- reactive ({
                        input$income
                })
                ## calculate the income tax
                output$taxCalc <- reactive ({
                        ## if income is < 250K, there is no tax
                        if (input$income < 250000)
                                t<-0
                        ## if income if between 250K and 500K, then tax is
                        ## 10% of the amount income exceeds 250K
                        else if (input$income <500000)
                                t<-(input$income-250000)*(0.1)
                        ## if income is between 500K and 1M, then tax is
                        ## 20% of the amount income exceeds 500K, plus 25K
                        else if (input$income <1000000)
                                t<-((input$income-500000)*(0.2))+25000
                        ## if income is more than 1M, then tax is 30% of the
                        ## amount income exceeds 1M, plus 125K
                        else
                                t<-((input$income-1000000)*(0.3))+125000
                        ## return calculated tax
                        t
                })
        }
)