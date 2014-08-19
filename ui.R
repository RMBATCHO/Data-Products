shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Calculate Your BMI!"),
                sidebarPanel(
                        numericInput('weight', 'Your Weight (pounds):', 160, min=0),
                        numericInput('heightFt', 'Your Height Feet (if 5ft 8in enter 5)', 5, min=0),
                        numericInput('heightInc', 'Your Height Inch (if 5ft 8in enter 8)', 8, min=0),
                        checkboxGroupInput("null", "Select which healthy steps you follow: ",
                                           c("Yes, I work out regularly!" = "1",
                                             "Yes, I drink lots of water everyday!" = "2",
                                             "Yes, I eat several small meals a day!" = "3")),
                        submitButton('Compute BMI')
                ),
                mainPanel(
                        h3('Your Health Results!'),
                        h5('Body mass index (BMI) is an indicator of your body fat based on your given height and weight. The results, below, list your BMI, a diagnosis, and a BMI chart for your reference.'),
                        h4('Your BMI is'),
                        verbatimTextOutput("bmiNumber"),
                        verbatimTextOutput("bmiResults"),
                        img(src = "bmi.jpg", height = 600, width = 600, contentType = NA)
                        )
        )
)