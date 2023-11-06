# Motivation for Learning R
This is to help with contributing to KEcoLab tool which helps in measuring Software Energy consumption.

## Running R files through terminal
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

## Loading and unloading packages
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

## Plotting data
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