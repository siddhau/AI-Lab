import sys
mat=[]
check=[[1,2,3],[8,0,4],[7,6,5]]
d=[[0,1],[1,0],[-1,0],[0,-1]]
n,m=(3,3)
vis={}
debug=0
def get(cool):
    for i in range(n):
        for j in range(m):
            if cool[i][j]==0:
                return (i,j)
def AC(cool):
    ret=''
    for i in range(n):
        for j in range(m):
            ret+=str(cool[i][j])
    return ret

def go(cool):
    ret=0
    for i in range(n):
        for j in range(m):
            ret+=cool[i][j]!=check[i][j]
    return ret

def solve(cool):
    
    yo=AC(cool)
    if yo in vis:
        return False
    if check==cool:
        for x in cool:
            print x
        print '\n'
        return True
    vis[yo]=True
    x,y=get(cool)
    omg=[]
    for z in d:
        xx=x+z[0]
        yy=y+z[1]
        if xx>=0 and xx<n and yy>=0 and yy<m:
            cool[xx][yy],cool[x][y]=cool[x][y],cool[xx][yy]
            omg.append((go(cool),xx,yy))
            cool[xx][yy],cool[x][y]=cool[x][y],cool[xx][yy]
    omg=sorted(omg)
    for z in omg:
        xx=z[1]
        yy=z[2]
        cool[xx][yy],cool[x][y]=cool[x][y],cool[xx][yy]
        ret=solve(cool)
        cool[xx][yy],cool[x][y]=cool[x][y],cool[xx][yy]
        if ret is True:
            for w in cool:
                print w
            print '\n'
            return True
    return False

print('Enter Matrix\n')
sys.setrecursionlimit(15000)
for i in range(n):
    inp=raw_input().split()
    inp=[int(x) for x in inp]
    mat.append(inp)
solve(mat)
    
