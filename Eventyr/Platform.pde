class Platform{ //normal platform som spilleren står på
  float x,y,w,h;
  
  Platform(float startX, float startY, float _width, float _height){
    x = startX;
    y = startY;
    w = _width;
    h = _height;
  }
  
  void display(){
    fill(255,150,0);
    rect(x,y,w,h);
  }
  
}

class Gate{ //platform man skal røre for at vinde
  float x,y,w,h;
  
  Gate(float startX, float startY, float _width, float _height){
    x = startX;
    y = startY;
    w = _width;
    h = _height;
  }
  
  void display(){
    fill(0,255,0);
    rect(x,y,w,h);
  }
 
}
class Invisible{ //normal platform men uden at blive påvirket af intersect funktionen
  float x,y,w,h;
  
  Invisible(float startX, float startY, float _width, float _height){
    x = startX;
    y = startY;
    w = _width;
    h = _height;
  }
  
  void display(){
    fill(255,150,0);
    rect(x,y,w,h);
  }
 
}

class Enemy{ //ond platform som skal respawne spilleren hvis rørt af denne platform
  float x,y,w,h;
  float d;
  float b;
  float off;
  
  Enemy(float startX, float startY, float _width, float _height, float _offset){
    x = startX;
    b = startY;
    w = _width;
    h = _height;
    off = _offset;
  }
  
  
  void display(){
    fill(255,0,0);
    rect(x,y,w,h);
    y=b+sin(d+off)*100; //sinus kurve til bevægelse af platformen
    d+=0.05;
  }
 
}