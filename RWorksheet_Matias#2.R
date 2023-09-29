#Vector

#1Create a vector using : operator
  #a. Sequence from -5 to 5.
      seqOne <- seq(-5,5)
      seqOne
      #the result will be (-5 -4 -3 -2 -1  0  1  2  3  4  5)
    
  #b. x <- 1:7. What will be the value of x?
    xValue <- 1:7
    xValue

#2 Create a vector using seq() function
    #a. seq(1, 3, by=0.2) # specify step size
        seqTwo <- seq(1, 3, by=0.2)
        seqTwo
        #the result will be (1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0)

#3 A factory has a census of its workers.
        workerAges <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
                        35, 31, 27, 22, 37, 34, 19, 20, 57, 49,
                        50, 37, 46, 25, 17, 37, 43, 53, 41, 51,
                        35, 24, 33, 41, 53, 40, 18, 44, 38, 41, 
                        48, 27, 39, 19, 30, 61, 54, 58, 26, 18.)
        #a. Access 3rd element, what is the value?
        workerAges [(3)]
        #b. Access 2nd and 4th element, what are the values?
        workerAges [c(2,4)]
        #c. Access all but the 4th and 12th element is not included. 
        workerAges [c(1-3, 5-11, 13-50)]
        
#4 Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).
        #a. Print the results. Then access x[c("first", "third")].
        
        
        
        
        
        
        
        
    
    
    
    