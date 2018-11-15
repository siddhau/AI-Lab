#include<bits/stdc++.h>
using namespace std;

#define MAX 100

vector<int>graph[MAX+5];
int color[MAX+5],c;

bool dfs(int u)
{
    int i;
    bool ok;
    for(i=1;i<=c;++i)
    {
        color[u]=i;
        ok=true;
        for(auto z:graph[u])
        {
            if(!color[z])
            {
                ok=dfs(z);
                if(!ok)
                    break;
            }
            else if(color[z]==i)
            {
                ok=false;
                break;
            }
        }
        if(ok)
            return ok;
        color[u]=0;
    }
    return false;
}
bool go(int n)
{
    int i;
    for(i=1;i<=n;++i)
        if(!color[i] and !dfs(i))
            return false;
    return true;
}
int main()
{
    freopen("in.txt","r",stdin);

    int i,n,m,u,v;
    cin>>n>>m>>c;
    for(i=0;i<m;++i)
    {
        cin>>u>>v;
        graph[u].push_back(v);
        graph[v].push_back(u);
    }
    if(go(n))
    {
        for(i=1;i<=n;++i)
            cout<<i<<" "<<color[i]<<"\n";
    }
    else
        cout<<"IMPOSSIBLE";

    return 0;
}

/*
7 10 3
1 2
1 4
1 5
1 6
2 4
2 3
2 5
3 5
5 7
6 7

5 5 2
1 2
2 3
3 4
4 5
1 5
*/
