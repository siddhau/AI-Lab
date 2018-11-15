arr=raw_input('Enter list\n').split()
arr=sorted(arr)
x=arr[0]
ans=[]
ans.append(x)
for i in range(len(arr)):
    if x==arr[i]:
        continue
    ans.append(arr[i])
    x=arr[i]
print 'Final list is\n',ans
