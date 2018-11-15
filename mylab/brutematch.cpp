#include<bits/stdc++.h>
using namespace std;

string text,pattern;

int main()
{
    freopen("in.txt","r",stdin);
    int i,j,n,m;
    //cout<<"Enter text";
    cin>>text;
    //cout<<"Enter pattern";
    cin>>pattern;
    n=text.length();
    m=pattern.length();
    //cout<<n<<" "<<m<<endl;
    for(i=m;i<n;++i)
    {
        for(j=i-m;j<i;++j)
            if(text[j]!=pattern[j-(i-m)])
                break;
        if(j==i)
            cout<<"Found at "<<i-m<<" "<<i-1<<"\n";
    }
    return 0;
}
