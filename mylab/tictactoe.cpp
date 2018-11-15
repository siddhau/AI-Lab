#include<bits/stdc++.h>
using namespace std;

vector<vector<int> >tic;
map<vector<vector<int> >,pair<int,int> >mem;

pair<int,int>solve(int turn,vector<vector<int> >cool)
{
    if(dp[cool].count())
        return
    for(int i=0;i<3;++i)
    {
        for(j=0;j<3;++j)
        {
            if(tic[i][j]==0)
            {
                tic[i][j]=
            }
        }
    }
}
int main()
{
    //freopen("in.txt","r",stdin);
    int turn=1,x,y;
    tic.resize(3,vector<int>(3,0));
    while(turn<10)
    {
        if(turn&1)
        {
            cin>>x>>y;
            tic[x][y]=turn%2+1;
        }
        else
            solve(turn);
        turn++;
    }
    return 0;
}

