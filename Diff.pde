public class Diff extends PApplet {
 
   
  public void settings()
  {
    size(300,300);
  }
  
  public void  setup()
  {
      clear();
  background(255);  
   
  
  
    
    
  } 
  public void draw()
  {
     for(int i=0;i<imagesize;i++)
  for(int j=0; j<imagesize;j++)
  {
  
Dif[i][j]=abs((int)imageSrcLBP[i][j]-(int)imageTestLBP[i][j]); 
set(i+23,j+23,color((int)Dif[i][j]));
    
  }

 
    
  }
  
}
