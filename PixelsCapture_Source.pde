public class PixelsCaptureSrc extends PApplet {
  float[][] minimg=new float[16][16];
    float[][] minimgT=new float[16][16];
  int h =160;
  int w = 160;
  public void settings() {
    size(1400, 300);
  }
  
  public void  setup()
  {
    upload();
  }
  
  void upload()
  {
   for(int i= 0;i<16;i++)
    {
      for(int j= 0; j<16 ; j++)
      {
       if(valx-Dfi+i<imagesize && valy+j <imagesize ){
     minimg[i][j]=imageS[valx-Dfi+i][valy+j];
      minimgT[i][j]=imageSrcLBP[valx-Dfi+i][valy+j];
       }else{
          minimg[i][j]=0;
           minimgT[i][j]=0;
       }
        
      }
      
    }
    
  }
  
  void drawmi(){
    
       for(int i=0;i<16;i++)
  {for (int j=0 ; j<16 ; j++)
  {
    set(i+150,j,color((int)minimg[i][j]));
    set(i+300,j,color((int)minimgT[i][j]));
   // print (imageT[i][j] +"  "  );
  }
  }
    
  }
  
  void histogramme(){
    int[] T= new int[256];
  
    for(int i=0; i<256;i++)
{
  T[i]=numO(i,minimgT,16);
  
  fill(i);
  rect(i*5+50,290, 2, -T[i]);
}
    
  }
  
  
  public void draw() {
    
    
    
 drawmi();
 histogramme();
    
  }
}
