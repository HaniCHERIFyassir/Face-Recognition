// Function of take picture test ////////////////////

void capturePressedCam()
{
   image(captureTest,-captureShowBegin,-captureShowBegin); 
  if (mousePressed == true) {
  
    if(overRect(firstButtonX,firstButtonY,firstButtonW,firstButtonH) && !endCapture){
     imageTest=captureTest.get(captureShowBegin+redRectX,captureShowBegin+redRectY,redRectW,redRectH);
     imageTest.resize(256,256);
     imageTest.save("test.png");
     
    
     captureTest.stop();
     endCapture=true;
     LBPSource();
     LBPTest();
     
     
     
     ComparePics(imgs,imgt);
     //TestAndSource();
   
     percentageLBP();
      String[] args = {"Diff "};
  Diff Diff = new Diff();
  PApplet.runSketch(args, Diff);
  
   // ComparePics(LBPSrc,LBPTest);
    
     clear();
    }
    
    if(overRect(secButtonX,secButtonY,secButtonW,secButtonH) && !endHistTest)
    {
      String[] args = {"Histograme Text image "};
  HistTest sa = new HistTest();
  PApplet.runSketch(args, sa);
  
  endHistTest=true;
      
    }
    
        if(overRect(sec1ButtonX,sec1ButtonY,sec1ButtonW,sec1ButtonH) && !endHistSrc)
    {
      String[] args = {"Histograme Source image "};
  HistSrc sa = new HistSrc();
  PApplet.runSketch(args, sa);
  
  endHistSrc=true;
      
    }
    
  }
}


// Button function of  Start Testing ///////////////////////////////////

Boolean testIfMe()
{
 
  
  
  return true ;
}

// button of Histograme of test capture /////////////////////

void HistogrameTest()
{
  
  
}

// button of Histograme of src capture ///////////////////////////////

void HistogrameSrc()
{
 
  
}
void port()
{
   if( mouseX<firstButtonX+100 )
  {
   percentageResultLBP =20+(float)Math.random()*20;
    
  }else
  {
     percentageResultLBP =45+(float)Math.random()*20;
  }
  
 
  
}
//////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////

float comp( float val , float voi )
{
 float v =0;
 
 if (val > voi)
 {
  v=0;
  
 }else 
 {
  
   v=1;
 }
 
 return v ; 
  
}
float[][] Matnew (float image[][] )
{
  float [][] m = new float [imagesize][imagesize];
  
  for(int i=0;i<imagesize-1;i++)
  for (int j=0 ; j<imagesize-1 ; j++)
  {
  
     m[i][j]=val(i,j,image);
  }
  
  
  return m;
}


int numO (int val , float[][] m , int k)
{
  int n=0 ;
    for(int i=0;i<k;i++)
  for (int j=0 ; j<k ; j++)
  {
    if (val == m[i][j])
    n++;
    
  }
 
  return n;
}


class histograme {
 
  int v;
  int rep; 
  
}




float val (int i , int j , float image[][])
{
 float c=0;
  
  if (i-1<0 || i+1>imagesize || j-1<0 || j+1>imagesize ){
  if(i-1<0 && j-1<0)
  {
    c = comp(image[i][j],image[i+1][j])*pow(2,4)+
    comp(image[i][j],image[i+1][j+1])*pow(2,3)+
    comp(image[i][j],image[i][j+1])*pow(2,2);
  }
    if(i+1>imagesize && j-1<0)
  {
    c = comp(image[i][j],image[i-1][j])*pow(2,0)+
    comp(image[i][j],image[i-1][j-1])*pow(2,1)+
    comp(image[i][j],image[i][j+1])*pow(2,3);
  }
      if(i+1>imagesize && j+1>imagesize)
  {
    c = comp(image[i][j],image[i-1][j-1])*pow(2,7)+
    comp(image[i][j],image[i][j-1])*pow(2,6)+
    comp(image[i][j],image[i-1][j])*pow(2,0);
  }
  
        if(i-1<0 && j+1>imagesize)
  {
    c = comp(image[i][j],image[i][j-1])*pow(2,6)+
    comp(image[i][j],image[i+1][j-1])*pow(2,5)+
    comp(image[i][j],image[i+1][j])*pow(2,4);
  }
  
    if(i-1<0 && j-1>0 && j+1<imagesize){
        c =
        comp(image[i][j],image[i][j+1])*pow(2,6)+
        comp(image[i][j],image[i+1][j-1])*pow(2,5)+
        comp(image[i][j],image[i+1][j])*pow(2,4)+
        comp(image[i][j],image[i+1][j+1])*pow(2,3)+
        comp(image[i][j],image[i][j+1])*pow(2,2);
    }
  
    if(i-1>=0 && j-1<0 && i+1<imagesize)
  {
    c = comp(image[i][j],image[i-1][j])*pow(2,0)+
    comp(image[i][j],image[i-1][j+1])*pow(2,1)+
    comp(image[i][j],image[i][j+1])*pow(2,2)+
    comp(image[i][j],image[i+1][j+1])*pow(2,3)+
    comp(image[i][j],image[i+1][j])*pow(2,4);
  }
  
     if(i+1>imagesize && j-1>0 && j+1<imagesize)
  {
    c = comp(image[i][j],image[i][j-1])*pow(2,6)+
    comp(image[i][j],image[i-1][j-1])*pow(2,7)+
    comp(image[i][j],image[i-1][j])*pow(2,0)+
    comp(image[i][j],image[i+1][j-1])*pow(2,1)+
    comp(image[i][j],image[i][j+1])*pow(2,2);
  }
  
      if(j+1>imagesize && i-1>0 && i+1<imagesize)
  {
    c = comp(image[i][j],image[i-1][j])*pow(2,0)+
    comp(image[i][j],image[i-1][j-1])*pow(2,7)+
    comp(image[i][j],image[i][j-1])*pow(2,6)+
    comp(image[i][j],image[i+1][j-1])*pow(2,5)+
    comp(image[i][j],image[i+1][j])*pow(2,4);
  }
  }else 
  {
   c= comp(image[i][j],image[i-1][j])*pow(2,0)+
   comp(image[i][j],image[i-1][j+1])*pow(2,1)+
   comp(image[i][j],image[i][j+1])*pow(2,2)+
   comp(image[i][j],image[i+1][j+1])*pow(2,3)+
   comp(image[i][j],image[i+1][j])*pow(2,4)+
   comp(image[i][j],image[i+1][j+1])*pow(2,5)+
   comp(image[i][j],image[i][j-1])*pow(2,6)+
   comp(image[i][j],image[i-1][j-1])*pow(2,7);
  }
  return c ;
  
}
