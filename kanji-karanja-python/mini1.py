import time
#Function that checks for case insensitive alpha-numeric digits
def checkDuplicateOccurence (stringPassed):
    start_time = time.time()
    b=stringPassed.lower()
    count = {}
    for i in b:
        if i in count:
            count[i] = count[i]+1
        else:
            count[i]=1
    total = 0
    for i in count:
        if count[i]>1:
            total=total+1
    print(total)
    print("\nProgram executed in: %s seconds" % (time.time() - start_time))

checkDuplicateOccurence(input("String to check count:\t"))