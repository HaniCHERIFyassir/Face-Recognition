public class HistTest extends PApplet {
  
  PImage img;
  
   int p=1 , imgNum=8;
PImage img1;
  Capture c;

  String[] sidou = {"jaja"};
  int imagesize=256;
  
 // float[][] imageTH;
  Capture capture;
  
 
  public void settings()
  {
    size(1400,650);
  }
  
  public void  setup()
  {
    clear();
  background(255);  
    
   img=loadImage(file+"test.png"); 
  int w=img.width;
  int h=img.height;
  
    loadPixels();
  img.loadPixels();
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
  } 
  public void draw()
  {
           clear();
   background(255);  
    
     
 
   for(int i=1;i<imagesize-1;i++)
  {for (int j=1 ; j<imagesize-1 ; j++)
  {
    set(i+Dfi,j,color((int)imageTH[i][j]));
    set(i+Dfi+imagesize+Dii,j,color((int)imageTestLBP[i][j]));
   // print (imageT[i][j] +"  "  );
  }
//println();
}

int[] TH= new int[256];
for(int i=0; i<255;i++)
{
  TH[i]=numO(i,imageTestLBP,imagesize-1);
  
  fill(i);
  rect(i*5+50, 600, 2, -TH[i]/50);
}
mousePos();



 
    
  }
  
  void mousePos()  // fuction for send p
{

  stroke(255,0,0);
if(((mouseX > Dfi && mouseX<imagesize+Dfi )|| (mouseX >imagesize+Dii+Dfi && mouseX <Dfi+imagesize+Dii+imagesize))  && mouseY <imagesize){
line(mouseX, mouseY +10, mouseX, mouseY-10);
  line(mouseX+10, mouseY, mouseX-10, mouseY);
  
if(mouseX <Dfi+imagesize+Dii){

  line(mouseX+imagesize+Dii, mouseY +10, mouseX+imagesize+Dii, mouseY-10);
  line(mouseX+imagesize+Dii+10, mouseY, mouseX+imagesize+Dii-10, mouseY);
  valx=mouseX;
}
else{
  line(mouseX-(imagesize+Dii), mouseY +10, mouseX-(imagesize+Dii), mouseY-10);
  line(mouseX-(imagesize+Dii)+10, mouseY, mouseX-(imagesize+Dii)-10, mouseY);
  valx=mouseX-(imagesize+Dii);

}
valy=mouseY;

if(mousePressed)
{
  String[] args = {"16*16"};
  PixelsCaptureTest  sa = new PixelsCaptureTest();
  PApplet.runSketch(args, sa);
  
}


}
stroke(0);

}
}
