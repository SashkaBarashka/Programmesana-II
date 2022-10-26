import pandas as pd
import math
import sys
import os

#Aleksandrs Baranovskis, 12.DIT
l = input("Ievadiet veselu skaitli (decimālskaitļus tiks noapaļoti): ")
if l.isalpha() == True:
    sys.exit("Nejau tu neatsķir skaitli no burta...")
else:
    l = float(l)
    l = round(l)

def __init__(self):
    pass

class Rekinatajs:
    
    def Faktorials(self, x):
        #return math.factorial(x)
        if -1 < x < 1:
            if x == 0:
                atb = 1
            else:
                atb = x
        elif x < -1:
            atb = -1
            i = -2
            while i >= x:
                atb = atb * i
                i -= 1
        else:
            atb = 1
            i = 2
            while i <= x:
                atb = atb * i
                i += 1
        return atb
    #Math factorial nevar izmantot uz negatīviem skaitļiem
    
    def Sum(self, x):
        if -1 < x < 1:
            atb = x
        elif x > 1:
            atb = 1
            i = 2
            while i <= x:
                atb = atb + i
                i += 1
        else:
            atb = -1
            i = -2
            while i >= x:
                atb = atb + i
                i -= 1
        return atb
    
    def testPrime(self, x):
        if x == 0:
            return "Nulle nav ne pirmskaitlis, ne salikts skaitlis"
        elif x < 0:
            i = -2
            while i > x:
                if x % i == 0:
                    return "Skaitlis nav pirmskaitlis"
                i -= 1
        else:
            i = 2
            while i < x:
                if x % i == 0:
                    return "Skaitlis nav pirmskaitlis"
                i += 1
        return "Skaitlis ir pirmskaitlis"

    def TableMult(self, x):
        if x == 0:
            return "Nullei nav reizināšanas tabulas"
        elif x < 0:
            x = x * -1
        else:
            pass
        n = x
        B = pd.Series(range(1, x+1))
        A = pd.Series(range(1, x+1))
        dfA = pd.DataFrame(A)
        dfB = pd.DataFrame(B)
        dfA.dot(dfB.T)
        return (dfA.dot(dfB.T))
    
    def listDiv(self, x):
        atb = []
        if x == 0:
            return "Nullei nav dalītāju"
        elif x < 0:
            i = -1
            while i >= x:
                if x % i == 0:
                    atb.append(i)
                i -= 1
        else:
            i = 1
            while i <= x:
                if x % i == 0:
                    atb.append(i)
                i += 1
        return atb
    
    def listDivPrime(self, x):
        atb = []
        if x == 0:
            return "Nullei nav dalītāju"
        elif x < 0:
            i = -1
            while i >= x:
                if x % i == 0:
                    if self.testPrime(i) == "Skaitlis ir pirmskaitlis":
                        atb.append(i)
                    else:
                        pass
                i -= 1
        else:
            i = 1
            while i <= x:
                if x % i == 0:
                    if self.testPrime(i) == "Skaitlis ir pirmskaitlis":
                        atb.append(i)
                    else:
                        pass
                i += 1
        return atb
    #Teorētiski katram skatilim var būt gan pozitīvs dalītājs, gan negatīvs, bet ehhh

skaitlis = Rekinatajs()

print("Skaitļa faktoriāls: ", skaitlis.Faktorials(l))
print("Skaitļa summa: ", skaitlis.Sum(l))
print("Skaitļa pirmskaitlība: ", skaitlis.testPrime(l))
print("Skaitļa reizināšanas tabula: ")
print(skaitlis.TableMult(l))
print("Skaitļa dalītāji: ", skaitlis.listDiv(l))
print("Skaitļa dalītāji, kas ir pirmskaitļi: ", skaitlis.listDivPrime(l))