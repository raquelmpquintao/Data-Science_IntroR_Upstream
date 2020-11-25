

# Exercises - Day 2


**First:**
<br/>

**i)** Open a new folder where you are going to store your scripts and set up your working directory.

**ii)** Open a new R script file and use # to comment and organize your script using the exercise numbers

<br/>
<br/>

## Guided exercises
<br/>
<br/>
For exercises 1 to 8 consider the dataframe _births_ of the Epi package. This database regards births of babies in a hospital in England.
<br/>
<br/>

**Exercise 1** Identify the variables in the _births_ dataframe.
<br/>


<details><summary>Click Here to see the answer</summary><p>
 
```{r}
install.packages("Epi")
library(Epi)

data(births)

str(births)
```

</p></details>
<br/>
<br/>

**Exercise 2** Buid a histogram to hte variable _bweigth_
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
attach(births)
hist(bweight)


```

</p></details>

<br/>
<br/>

**Exercise 3**: Build a plot to analyze the relationship between weight of the babies and the number of gestational weeks.
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
plot(gestwks,bweight)

```

</p></details>

<br/>
<br/>


**Exercise 4**: Plot the mothers age with babies weigth and add labels to the axis and change the color of the dots to green.
<br/>

<details><summary>Click Here to see the answer</summary><p>
 
```{r}
plot(matage,bweight,xlab="Mothers age", ylab="Babies Weitgh", pch=16, col="green")

```
</p></details>

<br/>

<br/>

**Exercise 5**: Consider the _plot(gestwks,bweight)_ and add different colors for male and female babies.
<br/>


<details><summary>Click Here to see the answer</summary><p>

```{r}
plot(gestwks,bweight)
points(gestwks[sex==1],bweight[sex==1],col="blue")
points(gestwks[sex==2],bweight[sex==2],col="red")

```

</p></details>

<br>
<br/>

**Exercise 6**:Add a legend and a title to the plot.
<br/>
<details><summary>Click Here to see the answer</summary><p>

```{r}
legend("topleft",pch=1,legend=c("Boys","Girls"),
col=c("blue","red"))
title("Birth weight vs gestational week")
```

</p></details>

<br/>
<br/>



**Exercise 7**: Save the plot in to a .pdf file.
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
pdf(file="plot.1",heigth=3,width=4)
plot(gestwks,bweight)
dev.off()

```
</p></details>

<br/>
<br/>

**Exercise 8**: Plot two graphs on the same device, considering mothers age vs gestational week and mothers age vs birth weight.

<br/>
<details><summary>Click Here to see the answer</summary><p>

```{r}
par(mfrow=c(1,2))

plot(matage,gestwks,col="red")
plot(matage,bweight,col="blue")

```

</p></details>

<br/>
<br/>


**Exercise 9**: Consider the _ToothGrowth_ dataframe and build 
parallel boxplots to the size of the teeth for each type of method,
in all kinds of vitamin doses using _lattice_ package.
<br/>
<details><summary>Click Here to see the answer</summary><p>

```{r}
library(lattice)
 bwplot(len~supp|dose,data=ToothGrowth)

```

</p></details>

<br/>
 <br/>
 
 
**Exercise 10**: Plot histograms of the tooth length for each type of supplement (“OJ” or “VC”)
 <br/>
 
 <details><summary>Click Here to see the answer</summary><p>
 
```{r}
histogram(~len|factor(supp),data=ToothGrowth,
          main="Figure 1: Length by Supplement",xlab="Length")

```
</p></details>

<br/>
<br/>


**Exercise 11**: Creating a scatter plot by supplement type and dose

<br/>
<details><summary>Click Here to see the answer</summary><p>

```{r}
xyplot(len~dose|supp, ToothGrowth,
       main="Scatterplots by supplement type and dose",
       ylab="Length", xlab="Dose")

```

</p></details>

<br/>
<br/>




**Exercise 12**: Create a function that will return the sum of 2 integers.
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
f.sum <- function (x, y) {
  r <- x + y
  r
}

f.sum(5, 10)

```

</p></details>

<br/>
<br/>

**Exercise 13**: Create a function that given a data frame will print by screen the name of the column and the class of data it contains (e.g. Variable1 is Numeric).
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
f.class <- function (df) {
  for (i in 1:ncol(df)) {
    cat(names(df)[i], "is", class(df[, i]), "\n")
  }
}
f.class(cars)

```

</p></details>

<br/>
<br/>




**Exercise 14**: Practice turning the following code snippets into functions. Think about what each function does. What would you call it? How many arguments does it need? Can you rewrite it to be more expressive or less duplicative?


+ mean(is.na(x))


+ sd(x, na.rm = TRUE) / mean(x, na.rm = TRUE)


<br/>


<details><summary>Click Here to see the answer</summary><p>

```{r}
#This code calculates the proportion of NA values in a vector.

#mean(is.na(x))
#function name prop_na() that takes a single argument x, and #returns a single numeric value between 0 and 1.


prop_na <- function(x) {
  mean(is.na(x))
}
prop_na(c(0, 1, 2, NA, 4, NA))

```

</p></details>

<br/>



<details><summary>Click Here to see the answer</summary><p>

```{r}
#This code calculates the coefficient of variation (assuming that x can only take #non-negative values), which is the standard deviation divided by the mean.

#sd(x, na.rm = TRUE) / mean(x, na.rm = TRUE)
#function name coef_variation(), which takes a single argument x, and an optional na.rm #argument.


coef_variation <- function(x, na.rm = FALSE) {
  sd(x, na.rm = na.rm) / mean(x, na.rm = na.rm)
}

coef_variation(1:5)


coef_variation(c(1:5, NA))


coef_variation(c(1:5, NA), na.rm = TRUE)



```

</p></details>

<br/>
<br/>



