a='*'
i=1
n=5
for i in range(1,n+1,2):
        print(n*' '+i*a)
        n=n-1
n=5
for i in range(n-2,0,-2):
        print((n-1)*' '+i*a)
        n=n+1