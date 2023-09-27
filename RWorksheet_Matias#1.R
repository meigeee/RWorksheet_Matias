#Victor

  age<-c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29,
       35, 31, 27, 22, 37, 34, 19, 20, 57, 49,
       50, 37, 46, 25, 17, 37, 42, 53, 41,51, 
       35, 24, 33, 41)

#1 data points
  length(age)

#2 reciprocal
  reciprocal <-1/age
  reciprocal

#3 Assign also new_age <- c(age, 0, age)
  new_age <- c(age, 0, age)
  new_age

#4 Sort the value for age 
  sort_age <- sort(age)
  sort_age

#5 Find the minimum and maximum value for age
  min_age <- min(age)
  min_age
  max_age <- max(age)
  max_age

#6 Set up a vector named data
  victorData <- c(2.4, 2.8, 2.1, 2.5, 2.4, 2.2, 2.5, 2.3,
                2.5, 2.3, 2.4, 2.7)
  length(victorData)

#7 Generates a new vector for data
  new_victorData <- victorData * 2
  victorData

#8 Generate a sequence
  #8.1 Integers from 1 to 100.
    int_seq <- seq(1,100)
    int_seq
  #8.2 Numbers from 20 to 60
    num_seq <- seq(20,60)
    num_seq
  #8.3 Mean of numbers from 20 to 60
    mean_num <- mean(20:60)
    mean_num
  #8.4 Sum of numbers from 51 to 91
    sum_num <- seq(51,91)
    sum_seq <- sum(sum_num)
    sum_seq
  #8.5 Integers from 1 to 1,000
    int_seq <- seq(1,1000)
    int_seq
  #8.a sum of all data points 8.1 to 8.4
    all_data_points <- length(int_seq)+ length(num_seq)+ length(mean_num)+ length(sum_seq)
    all_data_points
  #8.c For 8.5 find only maximum data points until 10
    int_maxi <- max(1,10)
    int_maxi

#9 Print a vector with the integers between 1 and 100 that are not divisible by 3, 5 and 7 using filter option.
  print_vec <- Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
  print_vec

#10 Generate a sequence backwards of the integers from 1 to 100.
  seq_back <- seq(100,1)
  seq_back
  
#11 Find the sum of these multiples
  nat_num <- Filter(function(i) { all(i %% 3 == 0||i %% 5 == 0)}, seq(24))
  nat_num
  nat_sum <- sum(nat_num)
  nat_sum
  #11.a How many data points from 10 to 11?
    totaldatapts <- length(seq_back) +length(nat_num) + length (nat_sum)
    totaldatapts

#12 Statements can be grouped together
   { x <- 0+ x + 5 + 3}
    #every time I run the code contains syntax error
    #syntax error occur because there is no given variable or value for x
    #R reads it as two consecutive plus sign
    
#13 Set up a vector named score
    vscore <- c(72, 86, 92, 63, 88, 89, 91, 92, 75, 75, 77)
    vscore
    
    find_2 <- vscore[2]
    find_2
    find_3 <- vscore[3]
    find_3
    
#14 Create a vector a = c(1,2,NA,4,NA,6,7)
    vector_a = c(1,2,NA,4,NA,6,7)
    vector_a
    print(vector_a,na.print="999")
    
    #the codes prints the  vector "vector_a" 
    #`and replaces the NA with 999 
  
#15 special type of function calls
    name = readline(prompt="Input your name: ")
    age = readline(prompt="Input your age: ")
    print(paste("My name is",name, "and I am",age ,"years old."))
    print(R.version.string)
    
    #the output depends on what the user is putting about the name and age
    #it will print based on what the user's data input
    
    
    
    