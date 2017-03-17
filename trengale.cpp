#include <iostream>
using namespace std;
int main(){
    int row_co,col_co,n;
    cout<<"please enter the num of last rows\n";
   cin>>n;
    int arr[n][n];
    for(row_co=0;row_co<n;row_co++){
        for (col_co=0; col_co<n; col_co++) {
           cin>>arr[row_co][col_co];
        }
    }
    cout<<"\n\n\n\n\n\n";
    for(row_co=0;row_co<n;row_co++){
        for (col_co=0; col_co<=row_co; col_co++) {
            cout<<arr[row_co][col_co]<<"\t";
        }
        cout<<endl;
    }









    return 0;
}
