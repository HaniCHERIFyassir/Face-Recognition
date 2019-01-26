void redRect(){
  strokeWeight(5);
  stroke(255,0,0);
  fill(0,0,0,0);
  rect(redRectX,redRectY,redRectW,redRectH);
//  rect(redRectX,redRectY+20,redRectW,redRectH-150);
  line(redRectX,redRectY+20,redRectX+5,redRectY+20);
  //rect(redRectX+75,redRectY+20,redRectW-75,redRectH-150);
 // rect(redRectX+100,redRectY+20,redRectW-100,redRectH-150);
}

void firstButton()
{
  
  noStroke();
  
   if(!endCapture){
  if(!overRect(firstButtonX,firstButtonY,firstButtonW,firstButtonH))
  fill(126,8,183);
  else
  fill(255,255,255);port();
  rect(firstButtonX,firstButtonY,firstButtonW,firstButtonH,30,30,30,30);
  if(!overRect(firstButtonX,firstButtonY,firstButtonW,firstButtonH))
  fill(255,255,255);
  else 
  fill(126,8,183);
  textSize(30);
  text("capture", firstButtonX+40, firstButtonY+30);
  
   }else
   {
 /////////////////////// button die //////////////////////////////////////////////////    
   fill(230);
   rect(firstButtonX,firstButtonY,firstButtonW,firstButtonH,30,30,30,30);
   textSize(30);
   fill(200);
   text("capture", firstButtonX+40, firstButtonY+30);
   
///////////////////////////////////////     seconde button /////////////////////////////////
if(!endHistTest){
    if(!overRect(secButtonX,secButtonY,secButtonW,secButtonH))
  fill(126,8,183);
  else
  fill(255,255,255);
  
  rect(secButtonX,secButtonY,secButtonW,secButtonH,30,30,30,30);
  if(!overRect(secButtonX,secButtonY,secButtonW,secButtonH))
  fill(255,255,255);
  else 
  fill(126,8,183);
  textSize(20);
  text("Histograme Test", secButtonX+20, secButtonY+30);
}else{
 fill(230);
   rect(secButtonX,secButtonY,secButtonW,secButtonH,30,30,30,30);
   textSize(20);
   fill(200);
    text("Histograme Test", secButtonX+20, secButtonY+30);
  
  
}
  
  ///////////////////////////////////////      button 3 /////////////////////////////////
  
  if(!endHistSrc){
    if(!overRect(sec1ButtonX,sec1ButtonY,sec1ButtonW,sec1ButtonH))
  fill(126,8,183);
  else
  fill(255,255,255);
  
  rect(sec1ButtonX,sec1ButtonY,sec1ButtonW,sec1ButtonH,30,30,30,30);
  if(!overRect(sec1ButtonX,sec1ButtonY,sec1ButtonW,sec1ButtonH))
  fill(255,255,255);
  else 
  fill(126,8,183);
  textSize(18);
  text("Histograme Source", sec1ButtonX+20, sec1ButtonY+30);
  }else{
    
    fill(230);
  rect(sec1ButtonX,sec1ButtonY,sec1ButtonW,sec1ButtonH,30,30,30,30);
   textSize(18);
   fill(200);
     text("Histograme Source", sec1ButtonX+20, sec1ButtonY+30);
  }
  
  
  //////////////////////////// porsentage result ///////////////////////////////////////////
  
  fill(126,8,183);
  
  //text(,135, 600-30);
  
  if(percentageResultLBP>52){
    
 text("LBP : "+percentageResultLBP+"%  " + "Hani Detected",5, 600-20);
  //text("LBP : Hani Detected",5, 600-20);
  }
  else{
    
  text("LBP : "+percentageResultLBP+"%  " + "Incconu",5, 600-20);
  // text("LBP : Incconu",5, 600-20);
  }
  
  if(percentageResultHOG>70)
  {
 
     text("HOG : "+percentageResultHOG+"%  " + "Hani Detected",5, 650-30);
     // text("HOG : Hani Detected",5, 650-30);
  }
  else
  {
    
 text("HOG : "+percentageResultHOG+"%  " + "Incconu",5, 650-30);
 // text("HOG : Incconu",5, 650-30);
  }
   
   
   
   }
  
  
}

void HistTestButton()
{
 
  
}

void HistSrcButton()
{
 
  
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

void designInterface()
{
  noStroke();
  fill(39,38,57);
 rect(0,0,300,20);
 rect(280,0,20,600);
 rect(0,0,20,600);
  
  
}
