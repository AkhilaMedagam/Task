#find the sum of digits of a given number
a=int(input("Enter n: "))
b=0
while a>0:
    b=b+a%10
    a=a//10
print(b)
