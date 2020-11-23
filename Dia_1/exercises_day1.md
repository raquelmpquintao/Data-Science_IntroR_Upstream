

# Exercises - Day 1


**First:**
<br/>

**i)** Open a new folder where you are going to store your scripts and set up your working directory.

**ii)** Open a new R script file and use # to comment and organize your script using the exercise numbers

<br/>
<br/>

## Guided exercises
<br/>
<br/>


**Exercise 1** 

Upload and install _MASS()_ and _xlsx()_ packages.
<br/>


<details><summary>Click Here to see the answer</summary><p>
```{r}

install.packages("MASS")

library(MASS)

install.packages("xlsx")

library(xlsx)
```

</p></details>
<br/>
<br/>

**Exercise 2** Use R operators to calculate: i)  (1198/2) - $\sqrt(63)$ + 27?
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
1198/2-sqrt(63)+27


```

</p></details>

<br/>
<br/>

**Exercise 3**: Set _a_ equal to 7 and _b_ equal to 17 and _c_ equal to their product.
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
a<-7
b<-17
c<-a*b
c

```

</p></details>

<br/>
<br/>


**Exercise 4**: Type the following into R:
<br/>


```{r}
xx <- c(29,3,6,11,0,41,101)

```
<br/>

<br/>

**Exercise 5**: Print out the 4th element of xx.
<br/>


<details><summary>Click Here to see the answer</summary><p>

```{r}
xx[4]

```

</p></details>

<br>
<br/>

**Exercise 6**: What is the length of xx?

<br/>
<details><summary>Click Here to see the answer</summary><p>

```{r}
length(xx)

```

</p></details>

<br/>
<br/>



**Exercise 7**: Print out the 4th and 7th elements of xx.
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
xx[4]

```

</p></details>

<br/>
<br/>

**Exercise 8**: Look up in help the following functions: _sd()_, _min()_, _max()_ and then use these functions on the vector xx.

<br/>
<details><summary>Click Here to see the answer</summary><p>

```{r}
?sd
?min()
?max()

sd(xx)

min(xx)

max(xx)

```

</p></details>

<br/>
<br/>


**Exercise 9**: Set the vector "xvals" equal to the numbers from -2.5 to +2.5 in increments of .02. How many elements are in this vector?
<br/>
<details><summary>Click Here to see the answer</summary><p>

```{r}
xvals<-seq(-2.5,2.5,0.02)

length(xvals)

```

</p></details>

<br/>
 <br/>
 
 
**Exercise 10**: Type in the following command to R:
 <br/>
```{r}
mat <- matrix(seq(21,71,10),nrow=3)

```
<br/>
<br/>


**Exercise 11**: Print out the value in the 3nd row, 2nd column of mat.

<br/>
<details><summary>Click Here to see the answer</summary><p>

```{r}
mat[3,2]

```

</p></details>

<br/>
<br/>

**Exercise 12**: Print out the last row.
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
mat[3,]

```

</p></details>

<br/>
<br/>

**Exercise 13**: Print out the 2nd column.
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
mat[,2]

```

</p></details>

<br/>
<br/>




**Exercise 14**: Attach the data CO2.
<br/>


<details><summary>Click Here to see the answer</summary><p>

```{r}
attach(CO2)

```

</p></details>

<br/>
<br/>



**Exercise 15**: How many variables are in the data?

<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
names(CO2)
length(CO2)

```

</p></details>

<br/>
<br/>

**Exercise 16**: How many cases are in the data?
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
dim(CO2)

```

</p></details>

<br/>
<br/>




**Exercise 17**: Get the _summary_ function for the variable "uptake".

<br/>
<details><summary>Click Here to see the answer</summary><p>

```{r}
summary(CO2$uptake)

```

</p></details>

<br/>
<br/>


**Exercise 18**: The _read.table_ function loads data from a file  and returns a data frame variable. Download the MAO.dat file from GitHub to your working folder and then upload the file to your R session.
<br/>

<details><summary>Click Here to see the answer</summary><p>

```{r}
MAO<-read.table("MAO.dat", header=TRUE)

```

</p></details>

<br/>
<br/>




**Exercise 19**: Access the variables of the dataframe.


<details><summary>Click Here to see the answer</summary><p>

```{r}
names(MAO)

```

</p></details>

<br/>


**Exercise 20**: Save the dataframe on your working directory.

<details><summary>Click Here to see the answer</summary><p>

```{r}
save(file="mao.Rdata")

write.table(MAO, file="MAO")

```

</p></details>

<br/>




