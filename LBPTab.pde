float prs(float[][] M1 , float[][] M2)
{
 float p=0.0;
 
 for(int i=0; i<M1.length;i+=16)
 {
   for(int j=0; j<M1.length;j+=16)
    {
     
      p=p+0.390625*oneOrZero(difxy(M1,M2,i,j));
      
    }
 
 }
 
 
 return p; 
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
int  oneOrZero (int[] Dif)
{
  int n=0;
  
  for(int i=0;i<Dif.length;i++)
  {
    if(Dif[i]<1)
    {
      n++;
    }
    
   
    
  }
  
  if(n<200) 
  return 0 ;
  else 
  return 1 ;
}





int[] difxy(float[][] M1 , float[][] M2 , int x , int y)
{
  int[] D  = new int[256];
  int[] T1  = new int[256];
  int[] T2  = new int[256];
  
  T1=tabgray(M1,x,y);
    T2=tabgray(M2,x,y);
    for(int i=0;i<256;i++)
    D[i]= abs(T1[i]-T2[i]);
  
  
  return D;
  
}

int [] tabgray(float[][] M1 , int x ,int y )
{
 int[] T  = new int[256] ;

 for(int i=0;i<256;i++)
 T[i]=0;
  
  for(int i=x ; i<x+16;i++)
  {
    for(int j=y; j<y+16;j++)
    {
       
      T[(int)M1[i][j]]++;
      
    }
    
  }
  

  return T; 
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
