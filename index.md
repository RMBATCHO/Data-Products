---
title       : Body Mass Index Matters!
subtitle    : Living Healthy, Staying Fit!
author      : Rolande Mbatchou
job         : Developing Data Products Class - John Hopkins
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 
  

## Body Mass Index 

"Body Mass Index (BMI) is a number calculated from a person's weight and height. BMI is a fairly reliable indicator of body fatness for most people. BMI does not measure body fat directly, but research has shown that BMI correlates to direct measures of body fat, such as underwater weighing and dual energy x-ray absorptiometry (DXA).1, 2 BMI can be considered an alternative for direct measures of body fat." - [From Centers for Disease Control and Prevention](http://www.cdc.gov/healthyweight/assessing/bmi/adult_bmi/index.html?s_cid=tw_ob064)

<center> <img src="http://hifitnessclub.files.wordpress.com/2013/05/visual-bmi-chart1.jpg" alt="BMI"
width="500" height="320"/> </center>


--- 

   
## BMI Measures

<center> <img src="http://25.media.tumblr.com/tumblr_lqjytohhvH1qe4sw0o1_500.jpg" width="500" height="300"/> </center>


<center> <font color="darkblue"> <font size="11"> 1. Obese - BMI 30 & Above </font> </font> 

<center> <font color="green"> <font size="7"> 2. Overweight - BMI 25-30</font> </font>

<center> <font color="purple"> <font size="6"> 3. Normal - BMI 18.5-25 </font> </font>

<center> <font color="orange"> <font size="5"> 4. Underweight - BMI < 18.5 </font> </font>


--- 

## Your BMI Assessment

<font color="darkblue"> 1. If you are considered 'Obese', by decreasing your calorie intake of non-nutritious foods (such as junk food, soda, and sugar) and exercising regularly (walk/swim/run), you can reach a 'Normal' BMI. We recommend that you consult with a health professional to guide you before your start a diet. [More tips here!](http://www.womenshealth.gov/publications/our-publications/fact-sheet/overweight-weight-loss.html) </font>

<font color="green"> 2. If you are considered 'Overweight', by decreasing your calorie intake of non-nutritious foods (such as junk food, soda, and sugar) and exercising regularly (walk/swim/run), you can reach a 'Normal' BMI. [More tips here!](http://www.womenshealth.gov/publications/our-publications/fact-sheet/overweight-weight-loss.html) </font>

<font color="purple"> 3. If you are considered 'Normal' weight, keep on maintaining your weight, performing healthy workouts, along with a balanced diet (such as eating several small portions and drinking water regularly). [More tips here!](http://www.womenshealth.gov/publications/our-publications/fact-sheet/overweight-weight-loss.html) </font>

<font color="orange">  4. If you are considered 'Underweight', by increasing your calorie intake of nutritious food (protein, starch, vegetables, and fat), eating more often, and/or gaining muscle mass through healthy workouts, you can reach a 'Normal' BMI. [More tips here!](http://www.womenshealth.gov/publications/our-publications/fact-sheet/overweight-weight-loss.html) </font>


--- &twocol

## <center>BMI Index By State From [Insureme.com](http://www.insureme.com/insurance/bmi-index-state)</center>

*** =left 


```r
TopStates <- c("CA", "TX", "NY", "FL", 
               "IL", "PA", "OH", "GA", 
               "MI", "NC")
AvgBMI <- t(as.data.frame(matrix(c(26.31, 
            26.56, 25.95, 26.3, 26.8,26.79, 
            26.89, 26.96, 26.97, 26.88), 
            1, 10)))
AvgBMI <- as.numeric(AvgBMI)
TopStates <- as.character(TopStates)
df <- cbind(TopStates, AvgBMI)
df <- as.data.frame(df) 

library(ggplot2)
plot <- ggplot(data=df, aes(x=TopStates,
                y=AvgBMI)) + geom_bar(
                fill="lightblue",
                stat="identity")
```

*** =right

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2.png) 


--- 
   
## Tips for Maintaining a Healthy BMI

<center> From [UCSF Medical Center](http://www.ucsfhealth.org/education/tips_for_staying_healthy/) </center>

1. Be physically active for 30 minutes most days of the week. (walking, dancing, and running)
2. Eat a well-balanced, low-fat diet with lots of fruits, vegetables and whole grains.       
3. Drink 8 glasses of water daily.
4. Stay in touch with family and friends.
5. Get enough sleep and rest.
6. Talk to your health care provider, if you feel depressed for more than a few days
7. Keep your curiosity alive. Lifelong learning is beneficial to your health.
8. Don't smoke, or quit if you do. 
9. Be involved in your community.
10. Forgive those who have hurt you. </center>


