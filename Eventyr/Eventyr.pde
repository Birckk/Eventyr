/*
Made by Birckk

Have a nice day
*/
import processing.sound.*; //importering af biblioteker
import processing.video.*;

boolean left, right, up, down;

float Mvolume=0.05; //værdier til lydstyrke
float Mxvolume=0.15;
int Mcontrol=1; //lydlogic
int Mxcontrol = 1;

Movie movie; 
ScreenState screenState;

PImage eventyr; //billeder
PImage keys;
PImage traer;
PImage border;
PImage setborder;
PImage volumep;
PImage volumem;
PImage gear;
boolean flyv_eventyr=false;
SoundFile file; //lydfiler
SoundFile file2;
Delay delay;

void setup() { 
  screenState = new ScreenState();
  size (1280, 720, JAVA2D);
  background(0, 255, 0);
  textSize(18);
  stroke(0);
  noFill();
  file = new SoundFile(this, "sam.mp3"); //musikken
  file.amp(Mvolume);
  file.loop();
  file2 = new SoundFile(this, "jump2.mp3"); //hoppelyden
  file2.amp(Mxvolume);
  movie = new Movie(this, "winvideo.mp4"); //videoen
}

void movieEvent(Movie m) {
  m.read();
}

void draw() { //switchcasen til at skifte mellem de forskellige screenstates
  switch (screenState.currentState) {
  case 0:
    screenState.startStateLoop();
    break; 
 
     case 1:
     screenState.settingsStateLoop(); 
     break;
   
     case 2:
     screenState.playStateLoop();
     break;
     
     case 3:
     screenState.movieStateLoop();
     break;
     
     case 4:
     screenState.helpStateLoop();
     break;
  }
}
//registrering af piletasterne
void keyPressed(){ 
  switch (keyCode){
    case 37://left
      left = true;
      break;
    case 39://right
      right = true;
      break;
    case 38://up
      up = true;
      break;
    case 40://down
      down = true;
      break;
  }
}
void keyReleased(){
    switch (keyCode){
    case 37://left
      left = false;
      break;
    case 39://right
      right = false;
      break;
    case 38://up
      up = false;
      break;
    case 40://down
      down = false;
      break;
  }
}