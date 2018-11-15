N=raw_input('Enter no of nodes\n')
N=int(N)
print 'Enter Graph Matrix\n'
graph=[]
for i in range(N):
    x=raw_input().split()
    x=[int(y) for y in x]
    graph.append(x)
for i in range(N):
    for j in range(N):
        for k in range(N):
            graph[j][k]=min(graph[j][k],graph[j][i]+graph[i][k])
print 'Shortest distance matrix is\n'
for i in range(N):
    print graph[i],'\n'



