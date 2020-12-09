
# Exercises - Day 3


**First:**
<br/>

**i)** Create a new project (.Rproj) in RStudio.


**ii)** Create a new R Markdown file (.Rmd) with an output format of HTML in RStudio.

<br/>
<br/>

## Guided exercises

<br/>
<br/>


**Exercise 1** 

Insert a YAML Header with title (R Markdown), author and date of your choice at the top of your .Rmd script and save the file created in  the  project folder created above. 
Remove all of the document text and commands after the metadata section.




**Exercise 2** Add a level 2 header with the title of this article.


<br/>


<details><summary>Click Here to see the answer</summary><p>
## R Markdown
</p></details>
<br/>
<br/>



**Exercise 3** Demonstrate the use of in line R code to calculate the results of ((43 - 17)*.1)^2.

<br/>


<details><summary>Click Here to see the answer</summary><p>
`r ((43 - 17)*.1)^2)`

</p></details>

<br/>
<br/>


**Exercise 4** Demonstrate the use of a chunk to calculate the expression from the prior problem.

<br/>


<details><summary>Click Here to see the answer</summary><p>
A code block

```{r}
((43 - 17)*.1)^2 
```

</p></details>
<br/>
<br/>


**Exercise 5** Display the summary of “iris” dataset in your report. HINT: Use summary().
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}  
summary(iris)  


```

</p></details>

<br/>
<br/>

**Exercise 6**: Make a plot of the “cars” dataset. HINT: Use plot().
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
plot(iris\$Sepal.Width,iris\$Sepal.Length,col="blue")<br/>

```

</p></details>

<br/>
<br/>


**Exercise 7**: Hide the code from your report. HINT: Use echo.
<br/>



<details><summary>Click Here to see the answer</summary><p>

```{r  echo=TRUE}<br/>
xx <- c(29,3,6,11,0,41,101)<br/>

```
<br/>

<br/>
<br/>


