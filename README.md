# Table of Contents
1. [Introduction](#Introduction)
2. [Running R files through terminal](#Para1)
3. [Loading and unloading packages](#Para2)
4. [Plotting Data](#Para3)
5. [Overlaying Plots](#Para4)
6. [Descriptive Summary of packages](#Para5)
7. [Data Formats in R Programming Language](#Para6)

## Motivation for Learning R <a name="Introduction"></a>
This is to help with contributing to KEcoLab tool which helps in measuring Software Energy consumption.

## Running R files through terminal <a name="Para1"></a>
* To run files which do not include any graphs, we make use of Rscript. 
```
For Example:
Rscript InstallingR.R
```

* To run files requiring plotting of graphs we make use of it through R:
```
For Example:
> R
> source("InstallingR.R")
```
**_NOTE_**: 
* To clear plot make use of `dev.off()`
* Use radian instead of R which is a lot more user friendlier
* Also make use of Rstudio whenever possible

## Loading and unloading packages<a name="Para2"></a>
### Loading Packages
There are 2 types of packages:-

a) Base: These are provided with R Language but not loaded by default

b) Loaded: These have to be downloaded first, installed and loaded seperately. Can make use of `pacman` for this. `pacman` needs to be installed seperately for this. Make use of "CRAN" or "Crantastic" for this. [CRAN stands for 'Comprehensive R Archive Network'].

* To load base packages make use of `library()` or `require()` command. This allows for that R does not utilise more memory than needed.
    ```
    For eg:
    library(datasets) #This loads the package without any confirmation
    require(datasets) #Gives a confirmation page
    ```

* To load loaded packages using `pacman`: Offcourse first to use `pacman` we'll have to install it using `install.packages("pacman")`
    ```
    library(pacman) #This loads pacman
    pacman::p_load(<package names>) #p_load from pacman allows to load packages without loading pacman itself
    ```
    Then use following command to load pacman and successive loaded packages:
    ```
    pacman::p_load(pacman dplyr stringr tidyr httr)
    ```

* To install R packages using R(terminal):Eg- `install.packages("pacman")`


### Unloading Packages
* To unload base packages we make use of `detach`
```
For example:
detach("package:datasets", unload = TRUE)
```
    here `unload = TRUE` removes it from memory(v.v imp)

* To unload loaded packages using `pacman`
```
For Example: 
p_unload(all) #To unload all packages
p_unload(httr tidyr) #To unload specific packages
```

## Plotting data <a name="Para3"></a>
### With `plot()`
* The basic most command is the `plot` command which is basic X-Y plotting.
* `plot` command adapts to data types and the number of variables you are dealing with.
* To get information about any method/variable `?<method/variable>`
```
For examples:
?plot
```

* To plot against variables from a particular dataset use `$`
```
For example:
plot(iris$Species)                          #Categorical Variable
plot(iris$Petal.Length)                     #Quantitative Variable
plot(iris$Species, iris$Petal.Length)       #Cat X Quant (Box Plot)
plot(iris)                                  #Entire data frame (Useful if its not big)
```

* Plot with options

    * Example 1:
    ```
    plot(iris$Petal.length, iris$Petal.Width,
        col = "#cc0000",                                #hex decimal for color
        pch = 19,                                       #point character
        main = "Iris: Petal Length vs Petal Width",     #main title of plot
        xlab = ,                                        #x label for plot
        ylab = )                                        #y label for plot
    ```

    * Example 2:
    ```
    plot(dnorm, -3, +3,
        col = "#cc0000",
        lwd = 5,                                        #Line width
        main = "Standard Normal Distribution,
        xlab = "z-scores",
        ylab = "Density")
    ```

* Plot formulas with `plot()`
```
plot(cos, 0, 2*pi)       #cosine curve
plot(exp, 1, 5)          #exponential curve
plot(dnorm, -3, +3)      #Bell curve
```

**_NOTE_**:
* Categorical Variables: address how cases fall into groups
* Quantitative Variables: gives a measurement and comes with units
* Box and whisker plot/ Box plots: 
    * It is used to display the spread of data
    * It give 5 details:
        * Min val
        * Max val
        * Median (Also called 2nd Quartile)
        * Quartile 1(25%)
        * Quartile 3(75%)
    * Used for Categorical vs Quantitative plots(we can see formation of diff groups)
* Scatter plot is used to find if there is assosciation b/w 2 sets of data
    * It consists of 2 variables:=
        * explanatory variable
        * response variable
    * Explanatory variable should be along X axis and Response variable should be along Y axis.
    * If the scatter plot resembles a line then there maybe assosciation b/w X and Y axis. (Also not necessarily corelation != causation)
    * 3 types of correlation:-
        * Negative Linear correlation: scatter plot resembles a line but slope is negative.
        * Positive Linear correlation: scatter plot resembles a line but slope is positive.
        * No Linear correlation: scatter plot doesn't resemble a line.
    * Degree of correlation depends upon resemblance to a line accordingly 3 possible values:
        * Strong
        * Moderate
        * Weak
    * Used for both quantitative variable

### Bar charts with `barplot()`
These are used with categorical variables
```
For example:
library(datasets)

cylinders <- table(mtcars$cy)
barplot(cylinders)
plot(cylinders)
```

**_NOTE_**:
* Bar graphs are the most basic graph for most basic data.
* Before plotting the bar graph its essential to clean the data, this can be done by creating a seperate table.
* `table()` creates a frequency table having 2 columns: a) one of frequency b) second of parameter passed to the function.

### Histograms with `hist()`
These are used with quantitative variables
* Basic histograms
```
For example:
hist(iris$Petal.Length)
hist(iris$Petal.Width)
```

* Histogram with options
```
hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0, 3),
     xlab = "",
     breaks = 9,                                    #Specifies bins/buckets
     main = "Iris: Petal Width in setosa",
     col = "blue")

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0, 3),
     xlab = "",
     breaks = 9,
     main = "Iris: Petal width in virginica",
     col = "purple")
```

**_NOTE_**:
* basic histograms are plotted for `parameter passed` vs frequency
* mfrow stands for "multi frame row" which is a parameter and is used to set the layout whose initial value is (1,1) i,e only one row and one column for showing graphs. Its good practice to set it to its default value towards the end of the script.
* To set mfrow use `param(mfrow = c(3,1))` where `c()` is a vector creation function and `par()` is used to set graphical parameters.

### Scatter Plots with `plot()`

* It is used to visualize assosciation between 2 quantitative variable

```
#Basic Command
plot(mtcars$wt, mtcars$mpg)     #Explanatory var on X axis and Response var on Y axis

#With options
plot(mtcars$wt, mtcars$mpg,
     pch = 19,
     xlab = "mtcars$wt",
     ylab = "mtcars$mpg",
     main = "Scatter Plots",
     cex = 1.5,
     col = "blue")
```

**_NOTE_**
* It used to understand the following data:
    * Linear
    * Spread
    * Outliers
    * Correlation

## Overlaying Plots <a name="Para4"></a>
To overlay plots make use of `curve()` to achieve this with parameter `add = TRUE`

```
For eg:
hist(lynx, 
     col = "thistle1",
     freq = FALSE,                                #Histogram is plotted against probability distribution
     breaks = 14,
     xlab = "Number of lynx trapped",
     main = "Histogram of annual canadian lynx trappings 1821-1934")

curve(dnorm(lynx, mean = mean(lynx), sd = sd(lynx)),
            col = "thistle4",
            lwd = 2,
            add = TRUE)
```

The above code creates a histogram of number of lynx captured against its probability distribution. Also suggested number of bins = 14.

## Descriptive Summary of packages <a name = "Para5"></a>
### Using `summary()`
`summary()` gives min, max, median, 1st quartile, 3rd quartile and mean values for the parameter passed.

```
For eg:
summary(iris.Sepal.Length)      #Quantitative Variable
summary(iris.Species)           #Categorical Variable
```

**_NOTE_**
* If its the entire data frame(i.e table having several columns) then it will calculate all the above values seperately for each columns. 
```
Eg: 
summary(iris)                   #Entire Data Frame
```

### Using `describe()`
This function is present in the `pysch` package. To load and install psych package make use of `pacman`:
```
For eg:
pacman:p_load(pacman, psych)
p_help(psych)                   #Gives pdf documentation on web using pacman
p_help(psych, web = F)          #This loads it in the RStudio itself
describe(iris$Petal.Length)     #Quantitative Variable
describe(iris)                  #Entire Data Frame
```

By running `describe` we will get the following information:
1) n (Sample Size)
2) mean (Mean)
3) SD (Standard Deviation)
4) 10% Trimmed Mean
5) MAD  (Median Absolute Deviation)
6) min/max
7) range
8) skewness
9) kurtosis
10) SE (Standard Errors)

**_NOTE_** This is only for quantitative variables

## Selecting Cases
We can make use of selector to achieve this.
* Select by category
```
hist(iris$Petal.Length[iris$Species == "setosa"])
```
* Select by Value
```
hist(iris$Petal.Width[iris$Petal < 5.2])
```
* Multiple selectors
```
hist(iris$Petal.Length[iris$Petal.Length > 2 & 
    iris$Petal.Species == "setosa"])
```
* We can also create sub samples in case the same data is being utilised multiple times
```
i.setosa <- iris[iris$Petal.Length > 2,]     #This specifies a condition for rows but selects all columns
head(i.setosa)
summary(i.setosa)
hist(i.setosa$Petal.Length)
```
Since we leave column empty we select all the columns in the above example

## Data Formats in R Programming Language <a name="Para6"></a>
There are 2 main concepts while learning about data formats in R:
* Data Types 
* Data Structures

Data Types can be of 5 different types:-
* Numeric (integer, single and double)
* Logical
* Character
* Complex
* Raw

Data Structures can be majorly of 5 different types:-
* Vector
* Matrix
* Array
* Data Frame
* List

Check usage examples in `Data Formats/dataformats.R`