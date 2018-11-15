graph=[[] for x in range(100)]
vis=[ 0 for i in range(len(graph))]
    
def bfs(s):
    q=[]
    vis[s]=1
    q.append(s)
    while q:
        curr=q.pop(0)
        print curr,
        for x in graph[curr]:
            if vis[x]==0:
                q.append(x)
                vis[x]=1

x=raw_input().split()
N=int(x[0])
M=int(x[1])
for i in range(M):
    x=raw_input().split()
    u=int(x[0])
    v=int(x[1])
    graph[u].append(v)
    graph[v].append(u)
for i in range(N):
    if vis[i+1]==0:
        bfs(i+1)


    
