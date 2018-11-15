#include<bits/stdc++.h>
using namespace std;

#define ll long long
#define mod 1000000007
#define base 97
#define MAX 1000

string s;
int p97[MAX+5];

inline int mul(int x,int y)
{
    ll z=1LL*x*y;
    if(z>=mod)
        z%=mod;
    return z;
}
inline int add(int x,int y)
{
    int z=x+y;
    if(z>=mod)
        z-=mod;
    return z;
}
void pre()
{
    int i;
    p97[0]=1;
    for(i=1;i<=MAX;++i)
        p97[i]=mul(p97[i-1],97);
}
int get()
{
    int gold=0,i,len=s.length();
    for(i=0;i<len;++i)
        gold=add(gold,mul(s[i],p97[i]));
    return gold;
}
int main()
{
    freopen("in.txt","r",stdin);
    freopen("out.txt","w",stdout);
    cin.tie(0);
    int n,i;
    pre();
    cin>>n;
    for(i=1;i<=n;++i)
    {
        cin>>s;
        cout<<s<<" ->"<<get()<<"\n";
    }
}
