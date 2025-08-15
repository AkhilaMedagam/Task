#print the fibonacci series up to n terms
n=int(input("Enter num:"))
a=0
b=1
print("Fibonacci series: ")
for i in range(2,n):
    c=a+b
    a=b
    b=c
    print(c,end=" ")
