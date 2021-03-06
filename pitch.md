Pitch: Coursera Data Products Course Project
========================================================
author: Martijn van Gorp
date: May 2016
autosize: true
transition: rotate

Course Project: the app and the presentation
========================================================
The result of this course project contains:

### 1. The Shiny Application:
- <https://mvgorp.shinyapps.io/Data_Products_Course_Project>
- Code (like server.R and ui.R etc.): <https://github.com/mvgorp/data_products_course_project>
- It contains a selectbox and a slider
- The values of these input fields, influence the histogram
- Short user documentation is provided in the app itself

### 2. This Presentation:
- It is done in Rstudio Presenter
- It contains 5 pages (you are now on page 2)
- It is hosted on Rpubs
- And contains some embedded R code. See last slide.


Shiny Application: What is it?
========================================================
- With this application you can view the Airquality dataset
- The data is displayed in a Histogram
- You can manipulate the Histogram through an easy-to-use Panel


Shiny Application: How to manipulate the result?
========================================================
With the Panel you can manipulate the Histogram by:

1. choosing the column you want to be displayed
2. selecting the number of bins

![alt text](panel.png "Screenshot of the Panel")
<span class="caption">Figure 1: Screenshot of the Panel</span>

Shiny Application: what is the result
========================================================
For example, selecting the column "Temp" and the number of bins set to 10, you will see the following result:
<span class="amazing">! HOW AMAZING !</span>

```r
# Code for those who are interested
hist(airquality$Temp, breaks = 10, border = 'white', col = 'darkblue', main = paste('Histogram of Temp'), xlab = "")
```

![plot of chunk unnamed-chunk-1](pitch-figure/unnamed-chunk-1-1.png)


