bmiCalc <- function(weight, heightFt, heightInc) {
        bmi <- ((weight / (((heightFt*12)+ heightInc)^2)) * 703)
        bmi
}
        
shinyServer(
        function(input, output){
                output$bmiNumber <- renderPrint({bmiCalc(input$weight, input$heightFt, input$heightInc)})     
                output$bmiResults <- renderText({
                        if(((input$weight / (((input$heightFt*12)+ input$heightInc)^2)) * 703) < 18.5)"You are considered 'Underweight' but by increasing your calorie intake of nutritious food (protein, starch, vegetables, and fat), eating more often, and/or gaining muscle mass through healthy workouts, you can reach a 'Normal' BMI. Don't be discouraged, you can do it!"
                        else if(((input$weight / (((input$heightFt*12)+ input$heightInc)^2)) * 703) > 18.5 && ((input$weight / (((input$heightFt*12)+ input$heightInc)^2)) * 703) < 25) "Congrats! You are considered 'Normal' weight. Keep on maintaining your weight, performing healthy workouts, along with a balanced diet (such as eating several small portions and drinking water regularly)."
                        else if(((input$weight / (((input$heightFt*12)+ input$heightInc)^2)) * 703) > 25 && ((input$weight / (((input$heightFt*12)+ input$heightInc)^2)) * 703) < 30) "You are considered 'Overweight' but by decreasing your calorie intake of non-nutritious foods (such as junk food, soda, and sugar) and exercising regularly (walk/swim/run), you can reach a 'Normal' BMI. Don't be discouraged, you can do it!"
                        else "You are considered 'Obese' but by decreasing your calorie intake of non-nutritious foods (such as junk food, soda, and sugar) and exercising regularly (walk/swim/run), you can reach a 'Normal' BMI. We recommend that you consult with a health professional to guide you before your start a diet. Don't be discouraged, you can do it!"
                })
        })
                

