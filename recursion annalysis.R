> # Generate random IQ values with mean = 30 and sd =2
>  IQ <- rnorm(40, 30, 2)
> 
>  # Sorting IQ level in ascending order
>  IQ <- sort(IQ)
> 
>  # Generate vector with pass and fail values of 40 students
>  result <- c(0, 0, 0, 1, 0, 0, 0, 0, 0, 1,
+ + 1, 0, 0, 0, 1, 1, 0, 0, 1, 0,
+ + 0, 0, 1, 0, 0, 1, 1, 0, 1, 1,
+ + 1, 1, 1, 0, 1, 1, 1, 1, 0, 1)
> 
>  # Data Frame
>  df <- as.data.frame(cbind(IQ, result))
> 
>  # Print data frame
> print(df)
         IQ result
1  24.47362      0
2  26.12010      0
3  26.50146      0
4  26.59030      1
5  27.40357      0
6  27.73366      0
7  28.13514      0
8  28.23988      0
9  28.41706      0
10 28.45710      1
11 28.54872      1
12 28.75976      0
13 28.81611      0
14 29.04155      0
15 29.69001      1
16 29.85694      1
17 29.87842      0
18 29.99530      0
19 30.23452      1
20 30.29655      0
21 30.36911      0
22 30.38563      0
23 30.51393      1
24 30.54260      0
25 30.59034      0
26 30.61172      1
27 30.64940      1
28 30.81541      0
29 30.90249      1
30 30.91823      1
31 30.98106      1
32 31.50154      1
33 31.62312      1
34 31.86682      0
35 31.91478      1
36 32.06239      1
37 32.43342      1
38 32.43731      1
39 32.44564      0
40 33.06712      1
>          IQ result
Error: unexpected symbol in "         IQ result"
> 1  25.25977      0
Error: unexpected numeric constant in "1  25.25977"
> 2  26.20389      0
Error: unexpected numeric constant in "2  26.20389"
> 3  27.35999      0
Error: unexpected numeric constant in "3  27.35999"
> 4  27.41136      1
Error: unexpected numeric constant in "4  27.41136"
> 5  27.53198      0
Error: unexpected numeric constant in "5  27.53198"
> 6  27.57725      0
Error: unexpected numeric constant in "6  27.57725"
> 7  27.65354      0
Error: unexpected numeric constant in "7  27.65354"
> 8  28.19794      0
Error: unexpected numeric constant in "8  28.19794"
> 9  28.32630      0
Error: unexpected numeric constant in "9  28.32630"
> 10 28.41000      1
Error: unexpected numeric constant in "10 28.41000"
> 11 28.73624      1
Error: unexpected numeric constant in "11 28.73624"
> 12 28.83032      0
Error: unexpected numeric constant in "12 28.83032"
> 13 28.88632      0
Error: unexpected numeric constant in "13 28.88632"
> 14 28.89221      0
Error: unexpected numeric constant in "14 28.89221"
> 15 29.21788      1
Error: unexpected numeric constant in "15 29.21788"
> 16 29.22297      1
Error: unexpected numeric constant in "16 29.22297"
> 17 29.43626      0
Error: unexpected numeric constant in "17 29.43626"
> 18 29.49877      0
Error: unexpected numeric constant in "18 29.49877"
> 19 29.69506      1
Error: unexpected numeric constant in "19 29.69506"
> 20 29.73148      0
Error: unexpected numeric constant in "20 29.73148"
> 21 29.94458      0
Error: unexpected numeric constant in "21 29.94458"
> 22 30.19106      0
Error: unexpected numeric constant in "22 30.19106"
> 23 30.31277      1
Error: unexpected numeric constant in "23 30.31277"
> 24 30.34211      0
Error: unexpected numeric constant in "24 30.34211"
> 25 30.91084      0
Error: unexpected numeric constant in "25 30.91084"
> 26 31.60914      1
Error: unexpected numeric constant in "26 31.60914"
> 27 31.69094      1
Error: unexpected numeric constant in "27 31.69094"
> 28 31.73431      0
Error: unexpected numeric constant in "28 31.73431"
> 29 31.75973      1
Error: unexpected numeric constant in "29 31.75973"
> 30 32.25978      1
Error: unexpected numeric constant in "30 32.25978"
> 31 32.29440      1
Error: unexpected numeric constant in "31 32.29440"
> 32 32.50531      1
Error: unexpected numeric constant in "32 32.50531"
> 33 32.52319      1
Error: unexpected numeric constant in "33 32.52319"
> 34 33.01747      0
Error: unexpected numeric constant in "34 33.01747"
> 35 33.57239      1
Error: unexpected numeric constant in "35 33.57239"
> 36 33.67246      1
Error: unexpected numeric constant in "36 33.67246"
> 37 33.75906      1
Error: unexpected numeric constant in "37 33.75906"
> 38 33.81289      1
Error: unexpected numeric constant in "38 33.81289"
> 39 34.15851      0
Error: unexpected numeric constant in "39 34.15851"
> 40 34.24750      1
Error: unexpected numeric constant in "40 34.24750"
> 
>  # output to be present as PNG file
>  png(file="LogisticRegressionGFG.png")
> 
>  # Plotting IQ on x-axis and result on y-axis
>  plot(IQ, result, xlab = "IQ Level",
+ + ylab = "Probability of Passing")
Error: unexpected '=' in:
" plot(IQ, result, xlab = "IQ Level",
+ ylab ="
> 
>  # Create a logistic model
>  g = glm(result~IQ, family=binomial, df)
> 
>  # Create a curve based on prediction using the regression model
>  curve(predict(g, data.frame(IQ=x), type="resp"), add=TRUE)
Error in plot.xy(xy.coords(x, y), type = type, ...) : 
  plot.new has not been called yet
> 
>  # This Draws a set of points
>  # Based on fit to the regression model
>  points(IQ, fitted(g), pch=30)
Error in plot.xy(xy.coords(x, y), type = type, ...) : 
  plot.new has not been called yet
> There were 40 warnings (use warnings() to see them)
Error: unexpected symbol in "There were"
> 
>  # Summary of the regression model
>  summary(g)

Call:
glm(formula = result ~ IQ, family = binomial, data = df)

Deviance Residuals: 
    Min       1Q   Median       3Q      Max  
-1.7311  -0.9805  -0.3811   1.0069   2.0322  

Coefficients:
            Estimate Std. Error z value Pr(>|z|)  
(Intercept) -16.3461     6.7942  -2.406   0.0161 *
IQ            0.5422     0.2254   2.405   0.0162 *
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

(Dispersion parameter for binomial family taken to be 1)

    Null deviance: 55.352  on 39  degrees of freedom
Residual deviance: 47.622  on 38  degrees of freedom
AIC: 51.622

Number of Fisher Scoring iterations: 4

> 
> Call:
+ glm(formula = result ~ IQ, family = binomial, data = df)
Error: object 'Call' not found
> 
> Deviance Residuals: 
Error: unexpected symbol in "Deviance Residuals"
>     Min       1Q   Median       3Q      Max  
Error: unexpected numeric constant in "    Min       1"
> -1.9586  -0.8940  -0.4393   0.8677   1.8409  
Error: unexpected numeric constant in "-1.9586  -0.8940  -0.4393   0.8677"
> 
> Coefficients:
+             Estimate Std. Error z value Pr(>|z|)   
Error: unexpected symbol in:
"Coefficients:
            Estimate Std."
> (Intercept) -14.6983     5.3795  -2.732  0.00629 **
Error: unexpected numeric constant in "(Intercept) -14.6983     5.3795"
> IQ            0.4818     0.1771   2.720  0.00653 **
Error: unexpected numeric constant in "IQ            0.4818"
> ---
+ Signif. codes:  0 ‘*’ 0.001 ‘*’ 0.01 ‘’ 0.05 ‘.’ 0.1 ‘ ’ 1
Error: unexpected symbol in:
"---
Signif. codes"
> 
> (Dispersion parameter for binomial family taken to be 1)
Error: unexpected symbol in "(Dispersion parameter"
> 
>     Null deviance: 55.352  on 39  degrees of freedom
Error: unexpected symbol in "    Null deviance"
> Residual deviance: 45.782  on 38  degrees of freedom
Error: unexpected symbol in "Residual deviance"
> AIC: 49.782
Error in AIC:49.782 : NA/NaN argument
> 
> Number of Fisher Scoring iterations: 3
Error: unexpected symbol in "Number of"
> 
> 
>  # saving the file
>  dev.off()
null device 
          1 
> null device 
Error: unexpected symbol in "null device"
>           1
