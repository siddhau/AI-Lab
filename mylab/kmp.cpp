#include<bits/stdc++.h>
using namespace std;

#define MAX 100
string text,pat;
int lps[MAX+5];

void preprocess()
{
    int i,j,m;
    m=pat.length();
    lps[0]=0,j=0,i=1;
    while(i<m)
    {
        if(pat[i]==pat[j])
            lps[i++]=++j;
        else if(j!=0)
            j=lps[j-1];
        else
            lps[i++]=j;
    }
}
void kmp()
{
    int i,j,m,n;
    n=text.length(),m=pat.length();
    i=j=0;
    while(i<n)
    {
        if(text[i]==pat[j])
            ++i,j++;
        else if(j)
            j=lps[j-1];
        else
            ++i;
        if(j==m)
        {
            cout<<"Found at "<<i-m<<" "<<i-1<<"\n";
            j=lps[j-1];
        }
    }
}
int main()
{
    freopen("in.txt","r",stdin);
    int i,j,n,m;
    //cout<<"Enter text";
    cin>>text;
    //cout<<"Enter pattern";
    cin>>pat;
    preprocess();
    kmp();
    return 0;
}

