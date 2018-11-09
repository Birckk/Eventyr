class ScreenState{ //herunder findes all screenstates
  int currentState  = 0; //nuværende screenstate og de mange andre screenstates
  int startState    = 0;
  int settingsState = 1;
  int playState     = 2;
  int movieState     = 3;
  int helpState     = 4;
  boolean settingsingame = false; 
  
  float menuy = 300; //værdier til menukasser
  float menuy1 = 400;
  float menuy2 = 500;
  float menuy3 = 600;
  float menuw = 200;
  float menuh = 80;
  float menux = 1280/2-menuw/2;
  float x=5;
  String Start  = "Start";
  String Settings = "Settings";
  String Help = "Help";  
  
  LevelManager levelManager;
  Music music;
  
ScreenState(){ //billeder 
  eventyr = loadImage("eventyrlogo.png");
  traer = loadImage("traer.png");
  border = loadImage("v3.png");
  setborder = loadImage("setborder.png");
  volumep = loadImage("volumep.png");
  volumem = loadImage("volumem.png");
  gear = loadImage("gear.png");
  music = new Music();
  keys = loadImage("keys.png");
  setStartState();
  }
  
void setMovieState(){ //movie state til afspilning af film
  currentState = movieState;
  movie.play();
  movie.loop();
}

void movieStateLoop(){ //video
  image(movie, 0, 0); //position 
  float md = movie.duration(); 
  float mt = movie.time();
  if (mt > md-0.5) { //hvis filmen er slut skal den stoppe og starte startState
    movie.stop();
    setStartState(); 
  }
}

void setPlayState(){ //vælger playstate og includer levelmanager
   currentState = playState;
   levelManager = new LevelManager();
   smooth();
   left = false;
   right = false;
   up = false;
   down = false;
  }

void playStateLoop(){ //alle værdierne for playstatet
    background(traer); //baggrund
    fill(255, 153, 0);
    if (levelManager.win){ 
      setStartState(); 
    }
    else {
      try{
       levelManager.drawCurrentLevel();
      }catch(Exception e){ //exception e til når videoen skal starte. man vinder sidste bane
        //play en video
        setMovieState(); 
      }
    }
    //settings knap
    fill(255, 153, 0);
      if(mouseX>1220 && mouseX<1220+50 && mouseY>10 && mouseY<10+50) { fill(255, 170, 0);}
    rect(1220,10,50,50); //kasse 1
    image(gear,1220,10);
    if(mousePressed && mouseX>1220 && mouseX<1220+50 && mouseY>10 && mouseY<10+50) {  //start
    settingsingame = true;
      }
    fill(255, 153, 0);
     if (screenState.settingsingame){
    music.musicbox(true);
    }
  }


  void setStartState(){ //sætter startstate
    currentState = startState;
    background(traer);
  }

  
  void startStateLoop(){ //selve startstate
    background(traer);
    fill(255, 153, 0);
    
    //kasser til menu skærmen
    
    //kasse 1
    if(mouseX>menux && mouseX<menux+menuw && mouseY>menuy && mouseY<menuy+menuh) { fill(255, 170, 0);}
    rect(menux,menuy,menuw,menuh); //kasse 1
    image(border,menux,menuy); //Borders
    if(mousePressed && mouseX>menux && mouseX<menux+menuw && mouseY>menuy && mouseY<menuy+menuh) {  //start
    setPlayState();  }
    fill(255, 153, 0);
    
    //kasse 2
    if(mouseX>menux && mouseX<menux+menuw && mouseY>menuy1 && mouseY<menuy1+menuh) { fill(255, 170, 0);}
    rect(menux,menuy1,menuw,menuh); //kasse 2
    image(border,menux,menuy1);
    if(mousePressed && mouseX>menux && mouseX<menux+menuw && mouseY>menuy1 && mouseY<menuy1+menuh) {  //Settings
    setSettingsState(); }
    fill(255, 153, 0);
 
    //kasse 3
    if(mouseX>menux && mouseX<menux+menuw && mouseY>menuy2 && mouseY<menuy2+menuh) { fill(255, 170, 0);}
    rect(menux,menuy2,menuw,menuh); //kasse 3
    image(border,menux,menuy2);
    if(mousePressed && mouseX>menux && mouseX<menux+menuw && mouseY>menuy2 && mouseY<menuy2+menuh) {  //Help
    sethelpState(); }
    fill(255, 153, 0);
    
    //text til kasserne
    fill(0,0,0);
    text(Start,menux+80,menuy+30,menuw,menuh);  
    text(Settings,menux+70,menuy1+30,menuw,menuh); 
    text(Help,menux+83,menuy2+30,menuw,menuh);   
    text("Made by Birckk", 0,719);
    //slut på kasser
    
    //flyvende logo
    image(eventyr, width/2-385.5, x);
    if (x == 5){
     flyv_eventyr=true;
    }
     else if (x == 30) {
       flyv_eventyr=false;
      }
    if (flyv_eventyr==true){
       x+=0.5;
      }
      else if (flyv_eventyr==false) {
       x-=0.5;
      }
    //flyvende logo
  }
  
 
 void setSettingsState(){ //sætter settingsstate
    currentState = settingsState;
    background(traer);
  }
  
 void settingsStateLoop(){ //selve settingsstate
  background(traer);
  fill(255, 153, 0);
   music.musicbox(false); //includerer music
   
    //flyvende logo
    image(eventyr, width/2-385.5, x);
    if (x == 5){
     flyv_eventyr=true;
    }
     else if (x == 30) {
       flyv_eventyr=false;
      }
    if (flyv_eventyr==true){
       x+=0.5;
      }
      else if (flyv_eventyr==false) {
       x-=0.5;
      }
    //flyvende logo
    
    
 }
 
 
  void sethelpState(){ //sætter helpstate
    currentState = helpState;
    background(traer);
  }
  
  void helpStateLoop(){ //selve helpstate
    background(traer);
    fill(255, 153, 0);
    
    rect(width/2-200,200,400,500); //kasse 1
    image(setborder,width/2-200,200); //Borders
    
    //kasse main menu
    if(mouseX>menux && mouseX<menux+menuw && mouseY>menuy3 && mouseY<menuy3+menuh) { fill(255, 170, 0);}
    rect(menux,menuy3,menuw,menuh); //kasse 1
    image(border,menux,menuy3); //Borders
    if(mousePressed && mouseX>menux && mouseX<menux+menuw && mouseY>menuy3 && mouseY<menuy3+menuh) {  //start
    screenState.setStartState(); }
    fill(255, 153, 0);
    
    //tekst til instrukser og billede af piletaster
    fill(0, 0, 0);
    text("Hej og velkommen",width/2-125,250,300,menuh); 
    text("'Dit mål i spillet er at udforske den verden du er blevet sat i og fuldføre din skæbne hvor end den måtte føre dig hen'",width/2-150,285,300,500);
    text("Styringen af spilleren fungerer ved brug af piletasterne",width/2-125,400,300,menuh); 
    image(keys, width/2-100, 430);
    
    
    //flyvende logo
    image(eventyr, width/2-385.5, x);
    if (x == 5){
     flyv_eventyr=true;
    }
     else if (x == 30) {
       flyv_eventyr=false;
      }
    if (flyv_eventyr==true){
       x+=0.5;
      }
      else if (flyv_eventyr==false) {
       x-=0.5;
      }
    //flyvende logo
    fill(0, 0, 0);
    text("Main menu",menux+54,menuy3+30,menuw,menuh);   
 }
 
}