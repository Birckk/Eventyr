class Sprite {
  float x,y,w,h; //rektanglets værdier
  float speedX, speedY; //hastighed på x og y aksen
  boolean connected; //forbundet til en platform
  float g; //tyngekraft /-speedY
  
  Sprite() {
   x = 0;
   y = 600;
   w = 32; 
   h = 32;
   
   speedX = 0;
   speedY = 0;
   
   connected = false;
   g = 0.6;
  }
  
  void land(float destY){ //forbundet til en platform
   speedY = 0;
   connected = true;
   y = destY-h;
  }
  
  void update(){ //forskellige if statements til piletasterne
  if (left){
   speedX = -5; 
  }
  if (right){
   speedX = 5; 
  }
  if (!left && !right){
   speedX = 0; 
  }
  else if (left && right){
   speedX = 0;
  }
  if (up && connected == true){ //kan hoppe hvis man er på en platform
   file2.play();
   speedY = -12; 
   connected = false;
  }
  if (connected == false) {//tyngekraft
    speedY += g;
  }
  if (y > height){ //hvis man falder gennem verdenen
    y=600;
    x=0;
    speedY = 0;
  }

  x += speedX;
  y += speedY;
   }
   
   void display(){ //displayer spriten
    fill(0,0,255);
    rect(x,y,w,h);
  } 
  }
  
  
  
  