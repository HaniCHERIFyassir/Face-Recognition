
/// Libraries import  ///////////////////////////////////////////////////
import processing.video.*;
  import java.awt.*;

// configuration /////////////////////////////////
String file="C:/Studies/MIV 2/atulier creative/LBP  final/LBP/";





 PImage img , imgs,imgt;
  
   int p=1 , imgNum=8;
PImage img1;
  Capture c;

  String[] sidou = {"jaja"};
 // int imagesize=256;
   Capture capture;
// Globale Declaration///////////////////////////////////////////
PImage imageSrc  , imageTest;
PImage LBPSrc  , LBPTest;
Capture captureTest;
float percentageResultLBP=00.00  , percentageResultHOG=00.00;
int imagesize =256 ;
int[] tabT=new int[256]; // first image 
int[] tabS=new int[256]; // secound image *
int[] tabD=new int[256]; // secound image 
int[][] tabTest=new int[256][256]; // first image 
int[][] tabSource=new int[256][256];// secound st image 
int[][] Dif=new int[256][256];// secound st image 
int Dii=200; // distance entre l'image real et leur l'image LBP
int Dfi=400; // distance entre le debut de la fenaitre et l image 
int valx , valy;


float[][] imageTestLBP, imageTH ,imageSrcLBP, imageS ;

 //// Design Declaration ///////////////////////////////////////////////// 
  int redRectX= 70 , redRectY=70 , redRectW =170 , redRectH=200;   // red rectogel configuration 
int captureShowBegin = 150;
int firstButtonX = 50 , firstButtonY = 350 , firstButtonW = 200 , firstButtonH=50 ;  // first button configuration 
int secButtonX = 50 , secButtonY = firstButtonY+70 , secButtonW = 200 , secButtonH=50 ;  // 2 nd 
int sec1ButtonX = 50 , sec1ButtonY = secButtonY+70 , sec1ButtonW = 200 , sec1ButtonH=50 ; // 3 th
int sec2ButtonX = 50 , sec2ButtonY = sec1ButtonY+70 , sec2ButtonW = 200 , sec2ButtonH=50 ;
  boolean endCapture = false , endHistSrc = false , endHistTest=false ;

//////////////////////////////////////////////////

int compteur=0;
  int blocsize=8;

     float histo[]=new float[9];
   float matGD [][]=new float[9][9];
     float matMG [][]=new float[9][9];
     /////////////////////////////////////////////////////////////


public void settings()
{
 size(300,700);   // size of first interface  
  
}

// prancipale Programme and interface /////////////////////////////////////////////////////////
  public void  setup()
  {
    
   
    captureTest =  new Capture(this);  
    captureTest.start();  //start the camera 
    
  }
  
public  void draw()
{
   background(39,38,57);
   
   
  
  if(captureTest.available())
  {
    captureTest.read(); // read video when the cam is available 
  }
  
  capturePressedCam(); //  function of take a capture 
  ///////////////////  red rectongle /////////////////////////
  
  designInterface(); 
  redRect();
  
  // capture button ///////////////////
 
  firstButton();
  

  
  

  
  
  
}
