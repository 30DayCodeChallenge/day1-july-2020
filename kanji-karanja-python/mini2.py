import time
def fortune(principal, percent, withdraw, year, inflation):
    start_time = time.time()
    amount = principal
    withdrawProgressive = withdraw
    percentConverted = percent/100
    for i in range(year):
        amount = amount+percentConverted * amount-withdrawProgressive
        withdrawProgressive = withdrawProgressive+withdrawProgressive*percentConverted
    if amount>0:
        print(True)
    else:
        print(False)
    print("\nProgram executed in: %s seconds" % (time.time() - start_time))

fortune(100000, 1, 2000, 15, 1)
fortune(100000, 1, 10000, 10, 1)
fortune(100000, 1, 9185, 12, 1)