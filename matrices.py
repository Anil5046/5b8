mat=[[1,2,3],[4,5,6],[7,8,9]]
for i in mat:
    print(i)
print('\n')
for i in mat:
    print(i[::-1])
print('\n')
for i in mat[::-1]:
    print(i)

print('\n')
for i in mat:
    if(i==[4,5,6]):
        i=[0,0,0]
    print(i)