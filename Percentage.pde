void percentageLBP()
{
  
  
  
percentageResultLBP=prs(imageTestLBP,imageSrcLBP);


}

int[] tabi(int i ,  int j , float[][] LBP )
{
   
    float[][] minimgT=new float[16][16];
  
   for(int x= 0;i<16;i++)
    {
      for(int y= 0; j<16 ; j++)
      {
       if(valx-Dfi+i<imagesize && valy+j <imagesize ){
    
      minimgT[i][j]=LBP[valx-Dfi+i][valy+j];
       }else{
           minimgT[i][j]=0;
       }
        
      }
      
    }
  int[] Y = new int[256];
  
  for(int k=0;k<256;k++)
  {
//  Y[k]=numO(k,minimgT[i][j],16);
  
  }
  
  
  return Y;
  
}
