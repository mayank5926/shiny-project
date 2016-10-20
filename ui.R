## load shiny library
library(shiny)

shinyUI(pageWithSidebar(
        ## display header
        headerPanel("Income Tax Calculator"),
        ## include a numeric input field for inputting annual income figure
        sidebarPanel(
                numericInput('income', 'Annual Income (INR)', 0, min = 0, max = 5000000, step = 50000)
        ),
        mainPanel(
                ## display headers
                h3('Income Tax Calculation'),
                h4('Reported Annual Income (INR)'),
                ## display entered annual income
                verbatimTextOutput("inputValue"),
                h4('Calculated Tax (INR)'),
                ## display calculated tax on income
                verbatimTextOutput("taxCalc")
        )
))