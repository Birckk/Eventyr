class LevelManager { 
  int currentLevel = 0;
  boolean win = false;
  Level[] levels = new Level[3]; 
  
  
  LevelManager(){
   getlevels();
  }
  
  void drawCurrentLevel() { //render nuværende level og dets indhold
    println(levels[currentLevel].complete );
    if (levels[currentLevel].complete && currentLevel<levels.length){
      currentLevel++;
      println(currentLevel);
    }else if(currentLevel==levels.length){
     win = true; 
   
    }
    
    try{ //nuværende level i toppen
      levels[currentLevel].render();
      textAlign(CENTER,TOP);
      text ("nuværende lvl:"+str(currentLevel+1),width/2,0);
      textAlign(LEFT,BASELINE);
    }catch(Exception e){ //skifter til video
      image(movie, 0, 0);
        movie.play();
    }
    
    
  }
  
  void getlevels(){
    int h = 20;
    int wsnyd = 80;
    int w1 = 100;
    int w2 = 80;
    int w3 = 60;
    //alle de forskellige baner/levels
    //hver banen er bygget op af de forskellige platforme 
    
    for (int i = 0; i < levels.length; i++) {
      levels[i] = new Level();
      }
    //level 1  
//nederste del
    levels[0].createPlatform(0,650,w1,h);
    levels[0].createPlatform(200,650,w1,h);
    levels[0].createPlatform(400,650,w1,h);
    levels[0].createPlatform(600,650,w1,h);
    levels[0].createPlatform(800,650,w1,h);
    levels[0].createPlatform(1000,650,w1,h);
    levels[0].createPlatform(1180,550,w1,h);

    
//midterste del
    levels[0].createPlatform(210,450,w2,h);
    levels[0].createPlatform(410,450,w2,h);
    levels[0].createPlatform(610,450,w2,h);
    levels[0].createPlatform(810,450,w2,h);
    levels[0].createPlatform(1010,450,w2,h);
    levels[0].createPlatform(0,350,w1,h);

    
//øverste del
    levels[0].createPlatform(220,250,w3,h);
    levels[0].createPlatform(420,250,w3,h);
    levels[0].createPlatform(620,250,w3,h);
    levels[0].createPlatform(820,250,w3,h);
    levels[0].createPlatform(1020,250,w3,h);
    levels[0].createPlatform(1180,150,w1,h);
    
    levels[0].setGatePos(1220,90,40,60);
    //(1220,90,40,60);
    //(50,450,40,60)
    
    
    // level 2
//nederste del
    levels[1].createPlatform(0,650,wsnyd,h);
    levels[1].createPlatform(80,650,wsnyd,h);
    levels[1].createInvisible(160,650,wsnyd,h);
    levels[1].createInvisible(240,650,wsnyd,h);
    levels[1].createPlatform(320,650,wsnyd,h);
    levels[1].createInvisible(400,650,wsnyd,h);
    levels[1].createInvisible(480,650,wsnyd,h);
    levels[1].createPlatform(560,650,wsnyd,h);
    levels[1].createPlatform(640,650,wsnyd,h);
    levels[1].createInvisible(720,650,wsnyd,h);
    levels[1].createInvisible(800,650,wsnyd,h);
    levels[1].createPlatform(880,650,wsnyd,h);
    levels[1].createPlatform(960,650,wsnyd,h);
    levels[1].createPlatform(1040,650,wsnyd,h);
    levels[1].createPlatform(1180,550,w1,h);
    
//midterste del
    levels[1].createPlatform(160,450,wsnyd,h);
    levels[1].createInvisible(240,450,wsnyd,h);
    levels[1].createPlatform(320,450,wsnyd,h);
    levels[1].createInvisible(400,450,wsnyd,h);
    levels[1].createInvisible(480,450,wsnyd,h);
    levels[1].createPlatform(560,450,wsnyd,h);
    levels[1].createPlatform(640,450,wsnyd,h);
    levels[1].createInvisible(720,450,wsnyd,h);
    levels[1].createInvisible(800,450,wsnyd,h);
    levels[1].createPlatform(880,450,wsnyd,h);
    levels[1].createPlatform(960,450,wsnyd,h);
    levels[1].createPlatform(1040,450,wsnyd,h);
    levels[1].createPlatform(0,350,w1,h);
   
   
//øverste del
    levels[1].createPlatform(160,250,wsnyd,h);
    levels[1].createInvisible(240,250,wsnyd,h);
    levels[1].createPlatform(320,250,wsnyd,h);
    levels[1].createInvisible(400,250,wsnyd,h);
    levels[1].createInvisible(480,250,wsnyd,h);
    levels[1].createPlatform(560,250,wsnyd,h);
    levels[1].createPlatform(640,250,wsnyd,h);
    levels[1].createInvisible(720,250,wsnyd,h);
    levels[1].createInvisible(800,250,wsnyd,h);
    levels[1].createPlatform(880,250,wsnyd,h);
    levels[1].createPlatform(960,250,wsnyd,h);
    levels[1].createPlatform(1040,250,wsnyd,h);
    levels[1].createPlatform(1180,150,w1,h);
    levels[1].setGatePos(1220,90,40,60);
    
    
    //level 3
//nederste del
    levels[2].createPlatform(0,650,w1,h);
    levels[2].createPlatform(200,650,w1,h);
    levels[2].createPlatform(400,650,w1,h);
    levels[2].createPlatform(600,650,w1,h);
    levels[2].createPlatform(800,650,w1,h);
    levels[2].createPlatform(1000,650,w1,h);
    levels[2].createPlatform(1180,550,w1,h);
    
    levels[2].createEnemy(140,550,30,60,1);
    levels[2].createEnemy(340,550,30,60,3);
    levels[2].createEnemy(540,550,30,60,5);
    levels[2].createEnemy(740,550,30,60,2);
    levels[2].createEnemy(940,550,30,60,4);
    
  
    
//midterste del
    levels[2].createPlatform(210,450,w2,h);
    levels[2].createPlatform(410,450,w2,h);
    levels[2].createPlatform(610,450,w2,h);
    levels[2].createPlatform(810,450,w2,h);
    levels[2].createPlatform(1010,450,w2,h);
    levels[2].createPlatform(0,350,w1,h);
    
    
    levels[2].createEnemy(140,350,30,60,1);
    levels[2].createEnemy(340,350,30,60,3);
    levels[2].createEnemy(540,350,30,60,5);
    levels[2].createEnemy(740,350,30,60,2);
    levels[2].createEnemy(940,350,30,60,4);


    
//øverste del
    levels[2].createPlatform(220,250,w3,h);
    levels[2].createPlatform(420,250,w3,h);
    levels[2].createPlatform(620,250,w3,h);
    levels[2].createPlatform(820,250,w3,h);
    levels[2].createPlatform(1020,250,w3,h);
    levels[2].createPlatform(1180,150,w1,h);
    
    levels[2].createEnemy(140,150,30,60,1);
    levels[2].createEnemy(340,150,30,60,3);
    levels[2].createEnemy(540,150,30,60,5);
    levels[2].createEnemy(740,150,30,60,2);
    levels[2].createEnemy(940,150,30,60,4);
     
    levels[2].setGatePos(1220,90,40,60);
   
  }
  
}