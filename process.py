log_file = open("um-server-01.txt") #this line is opening the file called 'um-server-01.txt'


def sales_reports(log_file): #this line is defining a function and naming it sales_reports
    for line in log_file: #This is a for loop and each line is looping over data
        line = line.rstrip() #This is a method that will return a copy of the string with trailing characters removed. You are naming the returned value as a variable. 
        day = line[0:3] #You are renaming the line [0:3] as a new variable labeled as 'day'.
        if day == "Mon":  #this is an if statment. If the day is = true, the function will print the line of data.
            print(line)


sales_reports(log_file) #You are invoking the function here. 
