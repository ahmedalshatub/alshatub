#include<iostream>
using namespace std;
int main(){

	string names , y_n;
	int counter=0,maxi=10;
	float curent_mo=0.00 , money_io,using_acco=0;
//user information info
	cout<<"welcome to our       -- baghdad bank --"<<endl;
	cout<<"please enter your name ";
	cin>>names;
	cout<<"now please enter your the money balance in IQD ";
	cin>>curent_mo;
	cout<<endl<<endl;
	cout<<"thank now you have 10 time to input or output your money"<<endl;
	cout<<"but if you want to do more you must to ubgrade your account"<<endl;
// end user information info


	//loop for Deposit or Withdrawal we can use any loop function
	while(counter<=maxi)	{
		cout<<endl<<endl;	
		cout<<"HI "<<names<<" if you want to Deposit money enter the value in positive (+)"<<endl;
		cout<<" but if you want to Withdrawal money enter the value in positive (-)"<<endl<<endl;
		cin>>money_io;
		curent_mo+=money_io;
		if(counter==maxi){
			cout<<endl<<endl;
			cout<<"this is your last time that accept edit the account if you want to ubgrade it you must pay: 200,000IQD for add times 10"<<endl;
			cout<<"to do this enter yes or no "<<endl;
			cin>>y_n;
			//des if the user want to upgrade his account
			if(y_n=="yes")
			maxi+=10;
			cout<<endl<<endl;
				}

		counter++;
		cout<<names<<" your account balance : "<<curent_mo;		
				
	}	//end loop for Deposit or Withdrawal we can use any loop function
	
	
	
	
	
	
	cout<<endl<<endl<<endl<<endl<<endl;
	system("pause");
	return(0);
}
