class Level {
  Sprite s;
  boolean complete = false;
  
  ArrayList<Platform> platforms = new ArrayList<Platform>(); //arraylister for de forskellige platforme
  ArrayList<Enemy> enemies = new ArrayList<Enemy>();
  ArrayList<Invisible> invisibles = new ArrayList<Invisible>();
  Gate gate = new Gate (-5,-5,2,2);
  
  Level(){
    s = new Sprite();
  }
  //platform
  void createPlatform(float startX, float startY, float _width, float _height){
    platforms.add(new Platform(startX, startY, _width, _height));
    
  }
  //gate
  void setGatePos(float startX, float startY, float _width, float _height){
    gate = new Gate(startX, startY, _width, _height);
    
  }
  //invisible
  void createInvisible(float startX, float startY, float _width, float _height){
    invisibles.add(new Invisible(startX, startY, _width, _height));
    
  }
  //enemy
  void createEnemy(float startX, float startY, float _width, float _height, float _offset){
    enemies.add(new Enemy(startX, startY, _width, _height, _offset));
    
  }  
  
  void setSpritePos(int x,int y){
    s.x=x;
    s.y=y;
  }
  
  void render(){ //rendering af de forskellige platforme samt intersect funktioner for enemy og platform
    s.update();
    s.display();
    for (Platform plat : platforms) {
      plat.display();
    }
    
    for (Invisible inv : invisibles) {
      inv.display();
    }
    
    for (Enemy enm : enemies) {
      enm.display();
    }
    gate.display();
    
    
    
    for (Platform plat : platforms) {
      if (rectangleIntersect(s, plat.x, plat.y, plat.w, plat.h)){
          s.land(plat.y);
          break;
      }else{
          s.connected = false;
      }
    }

    if (rectangleIntersect(s,gate.x,gate.y,gate.w,gate.h)){
      complete = true;
    }
    //musiksettings
    for (Enemy enm : enemies) {
      if (rectangleIntersect(s, enm.x, enm.y, enm.w, enm.h)){
          s.x=0;
          s.y=600;
          
      }
    }
    
   }

}