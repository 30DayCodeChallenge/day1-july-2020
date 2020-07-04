import time
def capt(string, listPassed):
    start_time = time.time()
    result = {}
    listify = []
    for i in string:
        listify.append(i)
    listLength = len(listify)
    for i in listPassed:
        if i<listLength:
            listify[i] = listify[i].upper()
    for x in listify:
        print(x,end="")
    print("")
    print("\nProgram executed in: %s seconds" % (time.time() - start_time))

capt("abcdef",[1,2,5])
capt("abcdef",[1,2,5,100])