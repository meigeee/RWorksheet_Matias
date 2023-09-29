#Vector

#1Create a vector using : operator
  #a. Sequence from -5 to 5.
      seqOne <- seq(-5,5)
      seqOne
      #the result will be (-5 -4 -3 -2 -1  0  1  2  3  4  5)
    
  #b. x <- 1:7. What will be the value of x?
    xValue <- 1:7
    xValue
    # value of x: 1 2 3 4 5 6 7

#2 Create a vector using seq() function
    #a. seq(1, 3, by=0.2) # specify step size
        seqTwo <- seq(1, 3, by=0.2)
        seqTwo
        #the result will be (1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0)
        # the numbers have a step size of 0.2 in between

#3 A factory has a census of its workers.
        workerAges <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
                        35, 31, 27, 22, 37, 34, 19, 20, 57, 49,
                        50, 37, 46, 25, 17, 37, 43, 53, 41, 51,
                        35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 
                        48, 27, 39, 19, 30, 61, 54, 58, 26, 18.)
        #a. Access 3rd element, what is the value?
             workerAges [(3)]
              #22
        #b. Access 2nd and 4th element, what are the values?
             workerAges [c(2,4)] 
             #28 & 36
        #c. Access all but the 4th and 12th element is not included. 
             workerAges [c(1-3, 5-11, 13-50)]
             # Output 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18
        
#4 Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).
        #a. Then access x[c("first", "third")]
             names
             names[c("first", "third")]
             #The output shows that results just printed the word first and third
        #b. Write the code and its output.
             names<- c(first=3, second=0, third=9)
             names
             
#5 Create a sequence x from -3:2.
    x<-seq(-3,2)
    x
      #a. Modify 2nd element and change it to 0;
        x[2] <- 0
        x
      # Second number changes and turn to 0
      #b.Write the code and its output.
        x<-seq(-3,2)
        x
        x[2] <- 0
        x
        # the output is (-3 0 -1 0 1 2)
        
#6 The following data shows the diesel fuel purchased by Mr. Cruz.
      #a. Create a data frame for month, price per liter (php)and purchase-quantity (liter). Write the R scripts and its output.
        Purchases <-data.frame(
          
          Month = c("Jan", "Feb", "March", "Apr", "May", "June"),
          Priceperliter = c(52.50,57.25,60.00,65.00,74.25,54.00),
          Purchasequantity = c(25,30,40,50,10,45)
        ) 
        Purchases
        View(Purchases)  
      #b.What is the average fuel expenditure of Mr. Cruz from Jan to June?
          average_expenditure <-weighted.mean(Purchases$Priceperliter , Purchases$Purchasequantity)
          average_expenditure
          #the result or the Output: 59.2625
#7. R has actually lots of built-in datasets.
      #a. Type “rivers” in your R console.
          data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
                    sd(rivers), min(rivers), max(rivers))
          data
      #b. The result shows the built in datasets of rivers in north America and shows the length,sum,mean,median,var,sd,min,max of rivers
      #c. the output is (141.0000 83357.0000 591.1844 425.0000 243908.4086 493.8708 135.0000 3710.0000)

#8. Annual pay as ranked.
      #a. Create a vector
          
          richcelebrities <- c("Tom Cruise","Rolling Stones","Oprah Winfrey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Sopranos","Dan Brown","Bruce Springsteen","Donald Trump","Muhammad Ali","Paul McCartney","George Lucas","Elton John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryant")
          
          powerrankings <- c(1, 2, 3, 4, 5, 6, 7 ,8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
          
          payamount <- c(67, 90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31 )
          
          
          celebData <- data.frame(Celebrity = richcelebrities, PowerRanking = powerrankings, PayAmount = payamount)
          
          View(celebData)
       
        #b. Modify the power ranking 
          celebData$PowerRanking[celebData$Celebrity == "J.K Rowling"] <- 15
          celebData$PayAmount[celebData$Celebrity == "J.K Rowling"] <- 90
          celebData

          View(celebData)
        #c. Create an excel file base from the table above
          write.csv(celebData, "/cloud/project/PowerRanking.csv")
          PowerRanking <- read.csv("PowerRanking.csv")
          PowerRanking
        #d. Access the rows 10 to 20
          Rows10to20 <- celebData[10:20, ]
          save(Rows10to20, file = "Ranks.RData")
          Rows10to20

#9 Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna
        #a. Import the excel file into your RStudio.
          install.packages("readxl")
          
          library(readxl)
          
          excelFile <- read_excel("hotels-vienna.xlsx")
          excelFile
          View(excelFile)
        #b. How many dimensions does the dataset have?
          dimensionFile <- dim( excelFile)
          dimensionFile
          # The output is : 428 rows and 24 columns
        #c. Select columns country, neighbourhood, price, stars, accomodation_type, and ratings.
          colnames(excelFile)
          selectCols <- excelFile[,c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
          View(selectCols)
        #d. Save the data as **new.RData to your RStudio.
          save(selectCols, 
               file="new.RData")
          View(selectCols)
        #e. Display the first six rows and last six rows of the  new.RData.
          load("new.RData")
          selectCols
          
          firstSix <- head(selectCols)
          lastSix <- tail(selectCols)
          
          firstSix
          lastSix
      
#10. Create a list of ten (10) vegetables you ate during your lifetime.
      #a. Veggies I ate
          veggiesyum <- list("Eggplant", "Cabbage", "Tomato", "Carrots", "Water Spinach",
                          "Corn", "Pumpkin", "Lettuce", "Potato", "Sweet Potato")
          
          veggiesyum
      #b. Add 2 additional vegetables after the last vegetables in the list.
          veggiesyum <- append(veggiesyum, c("Radish", "Asparagus"))
          veggiesyum
      #c. Add 4 additional vegetables after index 5.
          veggiesyum <- append(veggiesyum, c("Green Pepper", "Celery", "Beans", "Broccoli"), after = 5)
          
          veggiesyummy_length <- length(veggiesyum)
          veggiesyummy_length     
          veggiesyum
      #d. Remove the vegetables in index 5, 10, and 15.
          veggiesyum <- veggiesyum[c(-5,-10,-15)]
          newveggiesyummylength <- length(veggiesyum)
          newveggiesyummylength
          veggiesyum
          
          
          
         
          
          
        
        
        
        
        
        
        
        
    
    
    
    