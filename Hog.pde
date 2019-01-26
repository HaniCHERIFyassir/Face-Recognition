  //////CALCULER GX
float Gx(int x, int y,PImage im){
  float deltaX;
  
  int loc1=y*im.width+(x-1);
  int loc2=y*im.width+(x+1);
  if(x<=0){  deltaX = brightness(im.pixels[loc2])  - 0;    }
  else{ 
      if(x>=255){  deltaX = 0 - brightness(im.pixels[loc1]);}
  
          else {deltaX = brightness(im.pixels[loc2])  - brightness(im.pixels[loc1]);}


        }
  return deltaX;
}
////////////////




//////CALCULER GY
float Gy(int x, int y,PImage im){
  float deltaY;
 // print("\n");
  int loc1=(y-1)*im.width+(x);
  int loc2=(y+1)*im.width+(x);
  if(y<=0){   deltaY = brightness(im.pixels[loc2]) - 0;    }
  else {if(y>=255){  deltaY = 0 - brightness(im.pixels[loc1]);}
         else {    deltaY = brightness(im.pixels[loc2]) - brightness(im.pixels[loc1]);}
  }
  
  return deltaY;
}


//////////////



////CALCULER LE GRADIENT
float Gradient(int x, int y,PImage im){
  float div=Gy(x,y,im)/(Gx(x,y,im)+0.01);
  float res=atan(div);
  float ress;
  
  ress =degrees(res) ;
if( ress<0)
  {
    ress=ress+180;
  }
   
  return ress;
}



///////////////////////////



///////CALCULER LA MAGNATIDude
double Magnitude(int x, int y,PImage im){
 
  double res=Math.sqrt(Math.pow(Gx(x,y, im),2)+Math.pow(Gy(x,y,im),2));
  return res;
}

///////////////////////////////::

//////CALCULER L HISTOGRAMME HOG
float[] HistHOG(float[][] MGD,float[][] MMG)
{//print("31\n");
float hist[]=new float[9];
 for(int i=0;i<=8;i++){
      for(int j=0;j<=8;j++){
     /*  if(MGD[i][j]<=0)
       {
        MGD[i][j]=MGD[i][j]+170;
       
       }
      */
        if((MGD[i][j]>=0)&&(MGD[i][j]<20))
        {
          hist[0]=hist[0]+(MMG[i][j]*(20-MGD[i][j]))/20;
          hist[1]=hist[1]+(MMG[i][j]*(MGD[i][j])-0)/20;
        
        }
        if((MGD[i][j]>=20)&&(MGD[i][j]<40))
        {
          hist[1]= hist[1]+(MMG[i][j]*(40-MGD[i][j]))/20;
          hist[2]=hist[2]+(MMG[i][j]*(MGD[i][j])-20)/20;
        
        }
         if((MGD[i][j]>=40)&&(MGD[i][j]<60))
        {
          hist[2]= hist[2]+(MMG[i][j]*(60-MGD[i][j]))/20;
          hist[3]=hist[3]+(MMG[i][j]*(MGD[i][j])-40)/20;
        
        }
         if((MGD[i][j]>=60)&&(MGD[i][j]<80))
        {
          hist[3]=hist[3]+(MMG[i][j]*(80-MGD[i][j]))/20;
          hist[4]=hist[4]+(MMG[i][j]*(MGD[i][j])-60)/20;
        
        }
        if((MGD[i][j]>=80)&&(MGD[i][j]<100))
        {
          hist[4]=hist[4]+(MMG[i][j]*(100-MGD[i][j]))/20;
          hist[5]=hist[5]+(MMG[i][j]*(MGD[i][j])-80)/20;
        
        }
         if((MGD[i][j]>=100)&&(MGD[i][j]<120))
        {
          hist[5]=hist[5]+(MMG[i][j]*(120-MGD[i][j]))/20;
          hist[6]=hist[6]+(MMG[i][j]*(MGD[i][j])-100)/20;
        
        }
        if((MGD[i][j]>=120)&&(MGD[i][j]<140))
        {
          hist[6]=hist[6]+(MMG[i][j]*(140-MGD[i][j]))/20;
          hist[7]=hist[7]+(MMG[i][j]*(MGD[i][j])-120)/20;
        
        } 
        if((MGD[i][j]>=140)&&(MGD[i][j]<160))
        {
          hist[7]=hist[7]+(MMG[i][j]*(160-MGD[i][j]))/20;
          hist[8]=
          hist[8]+
          (MMG[i][j]*
          (MGD[i][j])-
          140)/20;
        
        }
         if((MGD[i][j]>=160)&&(MGD[i][j]<=180))
        {
     hist[8]=
  hist[8]+
     (MMG[i][j]*(180-MGD[i][j]))/20;
          hist[0]= hist[0]+(MMG[i][j]*(MGD[i][j])-160)/20;
        }
                           } 
                      }
return hist;
}

///////////////////////////////////////:::
/////////////////////////////////////////////////////////////////
float[] calculHOG(int x,int y,PImage im)
{ //print("A");
  int k=0,l=0;
   float[] gad=new float[64];
 //GradientDirection(x*blocsize,y*blocsize,gad);
   for(int i=x*blocsize;i<(x*blocsize)+blocsize;i++){
     
      for(int j=y*blocsize;j<(y*blocsize)+blocsize;j++){
        int loc=j*im.width+i;
       //int loc=j*img.width+(i-1);
           //print("B");
      
    /*
        if(degDirection[loc]<0)
        {degDirection[loc]=degDirection[loc]+180;
        }*/
       
        
          matMG[l][k]=(float)Magnitude(i,j, im);
          // print("MAg"+Magnitude(i,j));
        //matGD[l][k]=gad[loc];
        matGD[l][k]=Gradient(i,j,im);
      
    //    System.out.println(degDirection[loc]);
    k++;
    //println("k="+k);
      }
     // println("l="+l);
      k=0;
      l++;
    }
    
    histo=HistHOG(matGD,matMG);
return histo;
}

///////////////////////////////////::

float CompareHist(float[] hist1,float[] hist2){
  compteur++;
  int  cpt=0;
  float pour=0;
                 for(int i=0;i<8;i++){  pour=abs(pour+hist1[i]-hist2[i]);
                   if(hist1[i]-hist2[i]==0)
                   { cpt++;}
                 }
                   //pour=(cpt*100)/8;
return pour;
 


}

///////////////////////////////////////::::::



void ComparePics(PImage im,PImage im2 )
{  
  float[] pour=new float[900];
float[] hist1=new float[9];
float[]  hist2=new float[9];
int cpt=0;
float pour1=0;


    for(int i=1;i<im.width/blocsize-1;i++){
      for(int j=1;j<im.height/blocsize-1;j++){
          

   
hist1=calculHOG(i,j,im);
       //println("fiiiin");
       hist2=calculHOG(i,j,im2);
       //  pour[cpt]= CompareHist(hist1,hist2);
        pour1=pour1+CompareHist(hist1,hist2);
        cpt++;
        
        
        
      }}
    //  hist1=calculHOG(2,2);
    /*
           for(int i=0;i<8;i++){
 
         print(" resukt of one blocs are"+hist1[i]+"\n");}
*/
//float percentageResultHOG=0;
/*
for(int i=0;i<pour.length;i++){
    pourcent=pourcent+pour[i];
}
*/
percentageResultHOG=pour1*0.00003;
percentageResultHOG=100-percentageResultHOG;
println(" Le pourcentage de rassemblance est " +pour1+"   "+percentageResultHOG+"\n");
if(pour1<1300000)
{println(" This is hani i know you  \n" );}
else{println(" Hello Total Stranger i dont know you\n" );}

}
     
     
     
     
