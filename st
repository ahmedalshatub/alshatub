#include<iostream>
using namespace std;
struct node{
       int info;
       int oca;
       int DeletePoint;
       node* Lptr;
       node* Rptr;
       };
        node* root=NULL;
        node* nroot=NULL;
            void CreateNewTree(node* &root){
            root =new node;
            int x;
            cout<<"please enter the value\n";
            cin>>x;
            root->oca=1;
            root->info=x;
            root->DeletePoint=0;
            root->Lptr=NULL;
           root->Rptr=NULL;
            }
       void InsertToTree(node* &root, int x){
        if(x==root->info)
        root->oca+=1;
        else
            if(x>root->info){
                             if(root->Rptr==NULL){
             
                                node* h;
                                h= new node;          
                                h->info=x;
                                h->oca=1;
                				h->DeletePoint=0;
                                h->Lptr=NULL;
                                h->Rptr=NULL;   
                                 root->Rptr=h;
                                                  } 
                                else
									InsertToTree(root->Rptr,x);
                              
                              }
                              else
                                  if(root->Lptr==NULL){
                                        node* h;
                                        h= new node;          
                                        h->info=x;
                                        h->Lptr=NULL;
                                        h->Rptr=NULL;
                                        h->oca=1;   
                                        h->DeletePoint=0;
                                        root->Lptr=h;
                                                  } 
                                   else
										InsertToTree(root->Lptr,x);  
                   
                    }
                        
void PrintPreOrder(node* &root){
                    if(root!=NULL)
                                cout<<root->info<<"-("<<root->oca<<") ";
                    if(root->Lptr!=NULL)
                                PrintPreOrder(root->Lptr);                   
                    if(root->Rptr!=NULL)
                                PrintPreOrder(root->Rptr);
                             }
                             
void PrintInOrder(node* &root){
                        if(root!=NULL){
                                    PrintInOrder(root->Lptr);
                                    cout<<root->info<<"-("<<root->oca<<") ";
                                    PrintInOrder(root->Rptr);
                                            }                 
                             } 
                             
void PrintPostOrder(node* &root){
                    if(root!=NULL){
                            PrintPostOrder(root->Lptr);
                            PrintPostOrder(root->Rptr);
                            cout<<root->info<<"-("<<root->oca<<") ";
                                            }             
                             }
int count(node* &root){
            if(root==NULL)
              return 0;
                    
                 else
           return 1+count(root->Lptr)+count(root->Rptr); }                      
                        
                        
void Search(node* &root,int x){
                      if(x==root->info){
                                     cout<<"it is found \n";   
                                        }
                                        
                            else{
                        if(x>=root->info){
                                if(root->Rptr==NULL){cout<<"there is no found\n";}   
                        else{Search(root->Rptr,x);}   
                                                             }
                                  else{
                            if(root->Lptr==NULL){cout<<"there is no found\n";}   
                else{Search(root->Lptr,x);}   
                                                                  
                                                                  }  
                               
                                             
                                             }
       
                      }  
                             
bool SearchRet(node* &root,int x){
                      if(x==root->info){
                                    return true;   
                                        }
                      else{ if(x>root->info){
                            if(root->Rptr==NULL){return false;}
                            else return SearchRet(root->Rptr,x);
                 
                            }
                            else{
                               if(root->Lptr==NULL){return false;}
                            else return SearchRet(root->Lptr,x);
                                 }    
                           }                        
                    }
 
 
   int Sum(node* &root){
                                 if(root==NULL){
                                                return 0;
                                                }
                                                else{
                                                   return root->info+Sum(root->Lptr)+Sum(root->Rptr); 
                                                     
                                                     }
                                 
                                 }
int SumWithOcurence(node* &root){
                                 if(root==NULL){
                                                return 0;
                                                }
                                                else{
                                                   return (root->oca*root->info)+SumWithOcurence(root->Lptr)+SumWithOcurence(root->Rptr); 
                                                     
                                                     }
                                 
                                 }
int RetMax(node* &root){
                        if(root->Rptr==NULL){
                                             return root->info;
                                             }
                                             else{
                                              return  RetMax(root->Rptr);   
                                                  }
                        
                        
                        
                        
                        
                        
                        
                        }   
                        
int RetMin(node* &root){
                        if(root->Lptr==NULL){
                              return root->info;
                                    }
                            else{
                             return  RetMin(root->Lptr);   
                                                  }
                        
                        
                        
                        
                        
                        
                        
                        }          
                                 
int Mul(node* &root){
                    if(root==NULL){
                     return 1;
                                 }
                     else{
                    return root->info*Mul(root->Lptr)*Mul(root->Rptr); 
                                                     
                                                     }
                                 
                                 }
								 
int MulWithOCurence(node* &root){
                    if(root==NULL){
                     return 1;
                                 }
                     else{
                    return (root->oca*root->info)*MulWithOCurence(root->Lptr)*MulWithOCurence(root->Rptr); 
                                                     
                                                     }
                                 
                                 }    								                  
void freq(node* &root){
                    if(root==NULL){
                     return;
                                 }
                     else{
                   if(root->oca>1){
                                   cout<<root->info<<"-"<<root->oca<<endl;
                                   } 
                                   freq(root->Lptr);
                                       freq(root->Rptr);               
                                                     }
                                 
                                 }  
                                 
                                 
                                 
int LeafCount(node* &root){
                    if(root==NULL){
                     return 0;
                                 }
                     else{
                   if(root->Lptr==NULL&&root->Rptr==NULL){
                                   return 1;
                                   } 
                                   return LeafCount(root->Lptr)+LeafCount(root->Rptr);
                                               
                                                     }
                                 
                                 }                 
int EvenRet(node* &root){
                    if(root==NULL){
                     return 0;
                                 }
                     else{
                   if(root->info%2==0){
                                     return 1+EvenRet(root->Lptr)+ EvenRet(root->Rptr);
                                   } 
                  return EvenRet(root->Lptr)+ EvenRet(root->Rptr);          
                                                     }
                                 
                                 } 
                                 
                                 
                                 
int OddRet(node* &root){
                    if(root==NULL){
                     return 0;
                                 }
                     else{
                   if(root->info%2!=0){
                                   return 1+OddRet(root->Lptr)+ OddRet(root->Rptr);
                                   } 
                  return OddRet(root->Lptr)+ OddRet(root->Rptr);
                                                     }
                                 
                                 }   
								 
								 
								 
								 
								 
								 
			 void CreatNewTreeForCopy(node* &root,node* OldRoot){
            root =new node;
            root->oca=OldRoot->oca;
            root->info=OldRoot->info;
             root->DeletePoint=OldRoot->DeletePoint;
            root->Lptr=NULL;
           root->Rptr=NULL;
            }
            void InsertToTreeForCopy(node* &root, node* OldRoot){
            if(OldRoot->info>root->info){
                             if(root->Rptr==NULL){
             
                                         node* h;
                                          h= new node;          
                                                  h->info=OldRoot->info;
                                                    h->oca=OldRoot->oca;
                                                     h->DeletePoint=OldRoot->DeletePoint;
                                                    h->Lptr=NULL;
                                                    h->Rptr=NULL;   
                                                      root->Rptr=h;
                                                  } 
                                                  else{InsertToTreeForCopy(root->Rptr,OldRoot);}
                              
                              }
                              else{
                                  if(root->Lptr==NULL){
             
                                         node* h;
                                          h= new node;          
                                                  
                                                    h->Lptr=NULL;
                                                    h->Rptr=NULL;
                                                h->info=OldRoot->info;
                                                    h->oca=OldRoot->oca;
                                                     h->DeletePoint=OldRoot->DeletePoint;
                                                      root->Lptr=h;
                                                  } 
                                                  else{InsertToTreeForCopy(root->Lptr,OldRoot);}  
                                   
                                   
                                   }
       
                        }
						
						void copy(node* &root,node* &nroot){
                  if(root!=NULL){
                                if(nroot==NULL) {
                               CreatNewTreeForCopy(nroot,root);
                         
                                                }
                                                else{
                              InsertToTreeForCopy(nroot,root);   
                             }
                              copy(root->Lptr,nroot);
                             copy(root->Rptr,nroot);
                                 
                                 
                                 
                                 
                                 }               
                                    
                                      }	
            void InsertToTreeForMeror(node* &root, node* &OldRoot){
            if(OldRoot->info<root->info){
                             if(root->Rptr==NULL){
             
                                         node* h;
                                          h= new node;          
                                                  h->info=OldRoot->info;
                                                    h->oca=OldRoot->oca;
                                                     h->DeletePoint=OldRoot->DeletePoint;
                                                    h->Lptr=NULL;
                                                    h->Rptr=NULL;   
                                                      root->Rptr=h;
                                                  } 
                                                  else{InsertToTreeForMeror(root->Rptr,OldRoot);}
                              
                              }
                              else{
                                  if(root->Lptr==NULL){
             
                                         node* h;
                                          h= new node;          
                                                  
                                                    h->Lptr=NULL;
                                                    h->Rptr=NULL;
                                                h->info=OldRoot->info;
                                                    h->oca=OldRoot->oca;
                                                     h->DeletePoint=OldRoot->DeletePoint;
                                                      root->Lptr=h;
                                                  } 
                                                  else{InsertToTreeForMeror(root->Lptr,OldRoot);}  
                                   
                                   
                                   }
       
                        }                        
         	void Meror(node* &root,node* &nroot){
                  if(root!=NULL){
                                if(nroot==NULL) {
                               CreatNewTreeForCopy(nroot,root);
                         
                                                }
                                                else{
                              InsertToTreeForMeror(nroot,root);   
                             }
                              Meror(root->Lptr,nroot);
                             Meror(root->Rptr,nroot);
                                 
                                 
                                 
                                 
                                 }               
                                    
                                      }	
					 
 								 
								 
								                     
void DeleteNode(node* &root,int x){
      if(x==root->info){
                        if(root->DeletePoint<root->oca){
                              root->DeletePoint+=1;
                               cout<<"the node has been deleteed"<<endl;}
                               else{
                                    cout<<"the node has been deleted already"<<endl;
                                    }  
                                        }
                                        else{
                                           if(x>=root->info){
                                                          if(root->Rptr==NULL){cout<<"there is no found\n";}   
                                                          else{DeleteNode(root->Rptr,x);}   
                                                             }
                                                             else{
                                                                  
        
                                           if(root->Lptr==NULL){cout<<"there is no found\n";}   
                                  else{DeleteNode(root->Lptr,x);}   
                                                                  
                                      }  
                               
                                             
                                             }
     }                        
  void PrintPreOrderDetales(node* &root){
                             if(root!=NULL)
                             
                                if(root->DeletePoint<root->oca){
                                              cout<<root->info<<"-("<<(root->oca)-(root->DeletePoint)<<") ";                  
                                                cout<<"deleted node number"<<root->DeletePoint;                  
                                                                  }
        cout<<endl;
                             if(root->Lptr!=NULL){
                                             PrintPreOrderDetales(root->Lptr);     
                                                  
                                                  }
                             if(root->Rptr!=NULL){
                                             PrintPreOrderDetales(root->Rptr);     
                                                  
                                                  }
                             
                             
                             }
                             
void PrintInOrderDetales(node* &root){
                             if(root!=NULL){
                                            PrintInOrderDetales(root->Lptr);
                                       if(root->DeletePoint<root->oca){
                                              cout<<root->info<<"-("<<(root->oca)-(root->DeletePoint)<<") ";                  
                                                cout<<"deleted node number"<<root->DeletePoint;                  
                                                                  }
                                                                          cout<<endl;
                                             PrintInOrderDetales(root->Rptr);
                                            }
                                           
                                                
                             } 
                             
void PrintPostOrderDetales(node* &root){
                             if(root!=NULL){
                                            PrintPostOrderDetales(root->Lptr);
                                             PrintPostOrderDetales(root->Rptr);
                                             cout<<root->info<<"-("<<(root->oca)-(root->DeletePoint)<<") ";
                                      if(root->DeletePoint<root->oca){
                                              cout<<root->info<<"-("<<(root->oca)-(root->DeletePoint)<<") ";                  
                                                cout<<"deleted node number"<<root->DeletePoint;                  
                                                                  }
                                                                  cout<<endl;
                                            }
                                            
                                              
                             } 



 void PrintPreOrderDeletes(node* &root){
                             if(root!=NULL)
                            
                               if(root->DeletePoint>=1){
                                                 cout<<root->info<<"-("<<root->oca<<") "<<" number of deleted is "<<root->DeletePoint<<endl;               
                                                                  }
                             if(root->Lptr!=NULL){
                                             PrintPreOrderDeletes(root->Lptr);     
                                                  
                                                  }
                             if(root->Rptr!=NULL){
                                             PrintPreOrderDeletes(root->Rptr);     
                                                  
                                                  }
                             
                             
                             }
                             
void PrintInOrderDeletes(node* &root){
                             if(root!=NULL){
                                            PrintInOrderDeletes(root->Lptr);
                                           
                                             if(root->DeletePoint>=1){
                                                 cout<<root->info<<"-("<<root->oca<<") "<<" number of deleted is "<<root->DeletePoint<<endl;               
                                                                  }
                                             PrintInOrderDeletes(root->Rptr);
                                            }
                                           
                                                
                             }                
void PrintPostOrderDeletes(node* &root){
                             if(root!=NULL){
                                            PrintPostOrderDeletes(root->Lptr);
                                             PrintPostOrderDeletes(root->Rptr);
                                             
                                              if(root->DeletePoint>=1){
                                                 cout<<root->info<<"-("<<root->oca<<") "<<" number of deleted is "<<root->DeletePoint<<endl;               
                                                                  }
                                            }
                                            
                                              
                             } 
							 
int MaxBetween(int a,int b){
                              if(a>b)
							  return a;
                                  
                              return b;
                              
                              }  
int RetMaxDeath(node* &root){
                  
                  if(root==NULL)
                                 return 0;
                  else{
                     
                    return  1+MaxBetween(RetMaxDeath(root->Lptr),RetMaxDeath(root->Rptr));
             
                  }  							 
			}
			int MinBetween(int a,int b){
                              if(a<b)
							  return a;
                                  
                              return b;
                              
                              }  
		int RetMinDeath(node* &root){
                  
                  if(root==NULL)
                                 return 0;
                  else{
                     
                    return  1+MinBetween(RetMinDeath(root->Lptr),RetMinDeath(root->Rptr));
             
                  }  							 
			}					 
void PrintMaxPath(node* &root){
if(root==NULL){
}
	else{
	cout<<root->info<<" ";
	int l=RetMaxDeath(root->Lptr);
	int r=RetMaxDeath(root->Rptr);

if(l>r){


	if(root->Lptr!=NULL)
		
	PrintMaxPath(root->Lptr);
		
	}
	else

	if(root->Rptr!=NULL)		
			PrintMaxPath(root->Rptr);
	
	
}
}  
void PrintMaxPathClimping(node* &root){
if(root==NULL){
}
	else{

	int l=RetMaxDeath(root->Lptr);
	int r=RetMaxDeath(root->Rptr);

if(l>r){


	if(root->Lptr!=NULL)
		
	PrintMaxPathClimping(root->Lptr);
		
	}
	else{
	

	if(root->Rptr!=NULL)		
			PrintMaxPathClimping(root->Rptr);}
	
		cout<<root->info<<" ";
}
}    

		
                       
                             
int main(){
     int Chose;
    do{
        
      cout<<"\n------------------------------------------\n";
      cout<<"enter the a struction"<<endl;
      cout<<"1-create new tree \n";
      cout<<"2-insert \n";
      cout<<"3-insert sequence \n";
      cout<<"4-Display preorder \n";
      cout<<"5-Display  inorder \n";
      cout<<"6-Display postorder\n";
      cout<<"7-count \n";
      cout<<"8-search\n";
      cout<<"9-search return \n";
      cout<<"10-sum \n";
  
      cout<<"11-max \n";
      cout<<"12-Min \n";
      cout<<"13-average \n";
      cout<<"14-multiplay \n";
      cout<<"15-frequency items \n";
      cout<<"16-Leaf count \n";
       cout<<"17-even count \n";
        cout<<"18-odd count \n";
         cout<<"19-copy \n";
         cout<<"20-Delete \n";
         cout<<"21-Print preorder Tree detales \n";
         cout<<"22-Print inorder Tree detales \n";
         cout<<"23-Print postorder Tree detales \n";
         cout<<"24-Print preorder deleted node \n";
         cout<<"25-Print inorder deleted node \n";
         cout<<"26-Print postorder deleted node \n";
cout<<"27-Path count \n";
cout<<"28-sum with ocurence\n";
cout<<"29-multiplay with ocurence\n";
cout<<"30-meror\n";
cout<<"31-max path\n";
cout<<"32-min path\n";
cout<<"33-print max path from root to leaf\n";
cout<<"34-print max path climping\n";

      cout<<"35-exit\n";
      cin>>Chose;
       cout<<endl;
        switch(Chose){
         case 1:CreateNewTree(root);
              cout<<"end create";
               break;
                  case 2:if(root!=NULL){
                        int x;
                                
            cout<<"please enter the value\n";
            cin>>x;
            InsertToTree(root,x);
                                
                        }
                        else{CreateNewTree(root);}
              cout<<"end insert\n";
              break;
                   case 3:if(root!=NULL){
                        int x;
                        for(int i=0;i<5;i++){         
            cout<<"please enter the value\n";
            cin>>x;
            InsertToTree(root,x);
                                }
                        }
                        else{CreateNewTree(root);}
              cout<<"end insert\n";
               break;
               
               case 4:if(root!=NULL){
                    PrintPreOrder(root);
            cout<<"end display\n";
                                }
                        
                        else{cout<<"empty tree\n";}
              
               break;
                 case 5:if(root!=NULL){
                    PrintInOrder(root);
            cout<<"end display\n";
                                }
                        
                        else{cout<<"empty tree\n";}
              
               break;
                 case 6:if(root!=NULL){
                    PrintPostOrder(root);
            cout<<"end display\n";
                                }
                        
                        else{cout<<"empty tree\n";}
              
               break;
                 case 7:if(root!=NULL){
                    cout<<"the count is "<<count(root)<<endl;
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                   case 8:if(root!=NULL){
                        int x;
                     cout<<"please enter the value\n";
                     cin>>x;
                     Search(root,x);
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
               case 9:if(root!=NULL){
                        int x;
                     cout<<"please enter the value\n";
                     cin>>x;
                  if(SearchRet(root,x)==true){
                                      
                                      cout<<"it is found\n";
                                      }
                                      else{cout<<"it is  not found\n";}
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                  case 10:if(root!=NULL){
                    cout<<"the sum is "<<Sum(root)<<endl;
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                   case 11:if(root!=NULL){
                    cout<<"the max number  is "<<RetMax(root)<<endl;
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                   case 12:if(root!=NULL){
                    cout<<"the min number  is "<<RetMin(root)<<endl;
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                    case 13:if(root!=NULL){
                    cout<<"the average  is "<<Sum(root)/count(root)*1.0<<endl;
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
               case 14:if(root!=NULL){
                    cout<<"the mul is "<<Mul(root)<<endl;
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                    case 15:if(root!=NULL){
                   freq(root);
            
                         cout<<"end of freq display\n";       
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                     case 16:if(root!=NULL){
                   
            
                         cout<<"number of leaf count"<<LeafCount(root)<<endl;      
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                  case 17:if(root!=NULL){
                   
            
                         cout<<"number of even count"<<EvenRet(root)<<endl;      
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                  case 18:if(root!=NULL){
                   
            
                         cout<<"number of ODD count"<<OddRet(root)<<endl;      
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                    case 19:if(root!=NULL){
                    	 nroot=NULL;
                  copy(root,nroot);
                                    cout<<endl;
                                                      cout<<endl;
                  PrintInOrder(root);
                  cout<<endl;
                                    cout<<endl;
             PrintInOrder(nroot);
                           
                        }
                        else{cout<<"empty tree\n";}
              
               break;
               
               
               
                    case 20:if(root!=NULL){
                        int x;
                     cout<<"please enter the value to delete\n";
                     cin>>x;
                     DeleteNode(root,x);
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
               
                    case 21:if(root!=NULL){
                    PrintPreOrderDetales(root);
            cout<<"end display\n";
                                }
                        
                        else{cout<<"empty tree\n";}
              
               break;
                 case 22:if(root!=NULL){
                    PrintInOrderDetales(root);
            cout<<"end display\n";
                                }
                        
                        else{cout<<"empty tree\n";}
              
               break;
                 case 23:if(root!=NULL){
                    PrintPostOrderDetales(root);
            cout<<"end display\n";
                                }
                        
                        else{cout<<"empty tree\n";}
              
               break;
               
               
                      case 24:if(root!=NULL){
                    PrintPreOrderDeletes(root);
            cout<<"end display\n";
                                }
                        
                        else{cout<<"empty tree\n";}
              
               break;
                 case 25:if(root!=NULL){
                    PrintInOrderDeletes(root);
            cout<<"end display\n";
                                }
                        
                        else{cout<<"empty tree\n";}
              
               break;
                 case 26:if(root!=NULL){
                    PrintPostOrderDeletes(root);
            cout<<"end display\n";
                                }
                        
                        else{cout<<"empty tree\n";}
              
               break;
               case 27:if(root!=NULL){
                   
            
                         cout<<"number of path count"<<LeafCount(root)<<endl;      
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                 case 28:if(root!=NULL){
                    cout<<"the sum is "<<SumWithOcurence(root)<<endl;
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
             case 29:if(root!=NULL){
                    cout<<"the mul is "<<MulWithOCurence(root)<<endl;
            
                                
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                       case 30:if(root!=NULL){
                    	 nroot=NULL;
                  Meror(root,nroot);
                                    cout<<endl;
                                     cout<<endl;
                  PrintInOrder(root);
                  cout<<endl;
                                    cout<<endl;
             PrintInOrder(nroot);
                           
                        }
                        else{cout<<"empty tree\n";}
              
               break;
               
                   case 31:if(root!=NULL){
                   
     
                         cout<<endl<<"number of max path count"<<RetMaxDeath(root)<<endl;      
                        
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                 case 32:if(root!=NULL){
                   
     
                         cout<<endl<<"number of MIN path count"<<RetMinDeath(root)<<endl;      
                        
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                case 33:if(root!=NULL){
                   
     
                         
						 PrintMaxPath(root);     
                        
                        }
                        else{cout<<"empty tree\n";}
              
               break;
                   case 34:if(root!=NULL){
                   
     
                      
						 PrintMaxPathClimping(root);     
                        
                        }
                        else{cout<<"empty tree\n";}
              
               break;
              
               case 35:cout<<"the program end\n";
               break; 
                      
                      default :cout<<"wrong number"<<endl<<endl;
                      break;
                      
                      
                      }//end of switch
        
        
        }//end of do while
        while(Chose!=35);
    
    
    
    
    
    
    
    
    
    
    
    
    
    system("pause");
    return 0;
    
    }							 
	
