void LBPSource()
{
   
   img=loadImage(file+"src"+p+".png"); 
  int w=img.width;
  int h=img.height;
  
    loadPixels();
  img.loadPixels();
  imgs=img;
imageS=new float[w][h];
imageSrcLBP=new float[imagesize][imagesize];
  for(int i=0;i<h;i++)
  {    
      for(int j=0;j<w;j++)
      {
        int loc=j*img.width+i;
        //recuperer le niveau de gris
        float r =img.pixels[loc];
       imageS[i][j]=r;
        
      }
  }
  
 imageSrcLBP=Matnew(imageS);
 
 LBPSrc= createImage(256,256,GRAY);
 LBPSrc.loadPixels();
   for(int i=0;i<h;i++)  
      for(int j=0;j<w;j++)   
LBPSrc.pixels[j*256+i]=(int)imageSrcLBP[i][j];
 
 LBPSrc.save("LBPSrc.png");
 
  
}



void LBPTest()
{
  img=loadImage(file+"test.png"); 
  int w=img.width;
  int h=img.height;
  
    loadPixels();
  img.loadPixels();
   imgt=img;
imageTH=new float[w][h];
 imageTestLBP=new float[imagesize][imagesize];
  for(int i=0;i<h;i++)
  {    
      for(int j=0;j<w;j++)
      {
        int loc=j*img.width+i;
        //recuperer le niveau de gris
        float r =img.pixels[loc];
        imageTH[i][j]=r;
        
      }
  
  
  
  }
   
     imageTestLBP=Matnew(imageTH);
     
      LBPTest= createImage(256,256,RGB);
  LBPTest.loadPixels();
   for(int i=0;i<h;i++)  
      for(int j=0;j<w;j++)   
 LBPTest.pixels[j*256+i]=(int)imageTestLBP[i][j];
 
  LBPTest.save("LBPTest.png");
  
}
