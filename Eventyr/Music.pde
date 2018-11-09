class Music{
  
  float menuy = 300; //variabler til kasserne
  float menuy1 = 400;
  float menuy2 = 500;
  float menuy3 = 600;
  float menuw = 200;
  float menuh = 80;
  float menux = 1280/2-menuw/2;
  
  void musicbox(boolean isInGame){
 
   //start på kasser og border til kasser og tekst i kasserne og andet tekst
    
    //kasse bigkasse
    rect(width/2-200,200,400,500); //kasse 1
    image(setborder,width/2-200,200); //Borders
    
    //kasse main menu
    if(mouseX>menux && mouseX<menux+menuw && mouseY>menuy3 && mouseY<menuy3+menuh) { fill(255, 170, 0);}
    rect(menux,menuy3,menuw,menuh); //kasse 1
    image(border,menux,menuy3); //Borders
    if(mousePressed && mouseX>menux && mouseX<menux+menuw && mouseY>menuy3 && mouseY<menuy3+menuh) {  //start
    switch (screenState.currentState) {
    case 2:
        screenState.settingsingame = false;
        break;

    default:
        screenState.setStartState();
        break;
    }
}

    
    fill(255, 153, 0);
    
    //lyd delen pluds
    if(mouseX>730 && mouseX<730+50 && mouseY>300 && mouseY<300+50) { fill(255, 170, 0);}
    rect(730,300,50,50); //kasse 1
    image(volumep,730,300);
    if(mousePressed && mouseX>730 && mouseX<730+50 && mouseY>300 && mouseY<300+50 && Mcontrol <= 1) {  //start
        Mvolume+=0.01;
        file.amp(Mvolume);
        println(Mvolume);
      }
    fill(255, 153, 0);
    
    //lyd delen minus
    if(mouseX>500 && mouseX<500+50 && mouseY>300 && mouseY<300+50) { fill(255, 170, 0);}
    rect(500,300,50,50); //kasse 1
    image(volumem,500,300);
    if(mousePressed && mouseX>500 && mouseX<500+50 && mouseY>300 && mouseY<300+50 && Mcontrol >= 1) {  //start
        Mvolume-=0.01;
        file.amp(Mvolume);
        println(Mvolume);
      }
    //lyd logic til control af om man kan øge eller mindske lydstyrken
    if (Mvolume < 0){ 
      Mcontrol = 0;
    }
    if (Mvolume > 1){ 
      Mcontrol = 2;
    }
    if (Mvolume < 1 && Mvolume > 0){ 
      Mcontrol = 1;
    }
      
    //værdier for firkanter med lyd
    int F1 = 0; //musik farve rød, grøn og blå.
    int F2 = 255; 
    int F3 = 255; 
    int F4 = 255; 
    int F5 = 255; 
    int F6 = 255; 
    int F7 = 0; 
    int F8 = 0; 
    int F9 = 0; 
    int F10 = 0; 
    
    int Mkw = 9; //musik kassernes width
    int Mkh = 10; //musik kassernes height
    int Mky = 335; //Musik kassernes y
    int Mkx = 550; //Musik kassernes x
    int Mka = 8; //Musik kassernes afstand mellem dem
    int Mkf = -5; //Musik kasserne finpudsning
    int Mkf2 = 3; //Musik kassernes finpudsning 2
      
      
    //lyd opsætning
    if (Mvolume < 2 && Mvolume > -2){
    //logic for firkanter med lyd
    if (Mvolume > 0){ 
    F1 = 0; } else {F1 = 255; }   
    if (Mvolume > 0.1){ 
    F2 = 0; } else {F2 = 255; }
    if (Mvolume > 0.2){ 
    F3 = 0; } else {F3 = 255; }
    if (Mvolume > 0.3){ 
    F4 = 0; } else {F4 = 255; }
    if (Mvolume > 0.4){ 
    F5 = 0; } else {F5 = 255; }   
    if (Mvolume > 0.5){ 
    F6 = 0; } else {F6 = 255; }
    if (Mvolume > 0.6){ 
    F7 = 0; } else {F7 = 255; }
    if (Mvolume > 0.7){ 
    F8 = 0; } else {F8 = 255; }
    if (Mvolume > 0.85){ 
    F9 = 0; } else {F9 = 255; }
    if (Mvolume > 1){ 
    F10 = 0; } else {F10 = 255; }
    //firkanter til lyd    
      fill(F1,255,F1);
      rect(Mkx+Mka*1-Mkf,Mky-Mkf2,Mkw,Mkh+Mkf2*1);
       
      fill(F2,255, F2);  
      rect(Mkx+Mka*3-Mkf,Mky-Mkf2*2,Mkw,Mkh+Mkf2*2);
      
      fill(F3,255, F3);
      rect(Mkx+Mka*5-Mkf,Mky-Mkf2*3,Mkw,Mkh+Mkf2*3);
      
      fill(F4,255, F4);  
      rect(Mkx+Mka*7-Mkf,Mky-Mkf2*4,Mkw,Mkh+Mkf2*4);
      
      fill(255,255,F5);
      rect(Mkx+Mka*9-Mkf,Mky-Mkf2*5,Mkw,Mkh+Mkf2*5);  
      
      fill(255,255,F6);
      rect(Mkx+Mka*11-Mkf,Mky-Mkf2*6,Mkw,Mkh+Mkf2*6);
       
      fill(255,255,F7);  
      rect(Mkx+Mka*13-Mkf,Mky-Mkf2*7,Mkw,Mkh+Mkf2*7);
      
      fill(255,F8,F8);
      rect(Mkx+Mka*15-Mkf,Mky-Mkf2*8,Mkw,Mkh+Mkf2*8);
      
      fill(255,F9,F9);  
      rect(Mkx+Mka*17-Mkf,Mky-Mkf2*9,Mkw,Mkh+Mkf2*9);
      
      fill(255,F10,F10);
      rect(Mkx+Mka*19-Mkf,Mky-Mkf2*10,Mkw,Mkh+Mkf2*10);  
    }
    fill(255, 153, 0);
    
    
    // lyd effekt del
    //lyd delen pluds
    if(mouseX>730 && mouseX<730+50 && mouseY>500 && mouseY<500+50) { fill(255, 170, 0);}
    rect(730,500,50,50); //kasse 1
    image(volumep,730,500);
    if(mousePressed && mouseX>730 && mouseX<730+50 && mouseY>500 && mouseY<500+50 && Mxcontrol <= 1) {  //start
        Mxvolume+=0.01;
        file2.amp(Mxvolume);
        println(Mxvolume);
      }
    fill(255, 153, 0);
    
    //lyd delen minus
    if(mouseX>500 && mouseX<500+50 && mouseY>500 && mouseY<500+50) { fill(255, 170, 0);}
    rect(500,500,50,50); //kasse 1
    image(volumem,500,500);
    if(mousePressed && mouseX>500 && mouseX<500+50 && mouseY>500 && mouseY<500+50 && Mxcontrol >= 1) {  //start
        Mxvolume-=0.01;
        file2.amp(Mxvolume);
        println(Mxvolume);
      }
    //lyd logic
    if (Mxvolume < 0){ 
      Mxcontrol = 0;
    }
    if (Mxvolume > 1){ 
      Mxcontrol = 2;
    }
    if (Mxvolume < 1 && Mxvolume > 0){ 
      Mxcontrol = 1;
    }
      
    //værdier for firkanter med lyd
    int Fx1 = 0; //musik farve rød, grøn og blå.
    int Fx2 = 255; 
    int Fx3 = 255; 
    int Fx4 = 255; 
    int Fx5 = 255; 
    int Fx6 = 255; 
    int Fx7 = 0; 
    int Fx8 = 0; 
    int Fx9 = 0; 
    int Fx10 = 0; 
    
    int Mxky = 535; //Musik kassernes y
    int Mxkx = 550; //Musik kassernes x
      
    
    //lyd opsætning
    if (Mxvolume < 2 && Mxvolume > -2){
    //logic for firkanter med lyd
   
    if (Mxvolume > 0){ 
    Fx1 = 0; } else {Fx1 = 255; }   
    if (Mxvolume > 0.1){ 
    Fx2 = 0; } else {Fx2 = 255; }
    if (Mxvolume > 0.2){ 
    Fx3 = 0; } else {Fx3 = 255; }
    if (Mxvolume > 0.3){ 
    Fx4 = 0; } else {Fx4 = 255; }
    if (Mxvolume > 0.4){ 
    Fx5 = 0; } else {Fx5 = 255; }   
    if (Mxvolume > 0.5){ 
    Fx6 = 0; } else {Fx6 = 255; }
    if (Mxvolume > 0.6){ 
    Fx7 = 0; } else {Fx7 = 255; }
    if (Mxvolume > 0.7){ 
    Fx8 = 0; } else {Fx8 = 255; }
    if (Mxvolume > 0.85){ 
    Fx9 = 0; } else {Fx9 = 255; }
    if (Mxvolume > 1){ 
    Fx10 = 0; } else {Fx10 = 255; }
    //firkanter til lyd    
      fill(Fx1,255,Fx1);
      rect(Mxkx+Mka*1-Mkf,Mxky-Mkf2,Mkw,Mkh+Mkf2*1);
       
      fill(Fx2,255, Fx2);  
      rect(Mxkx+Mka*3-Mkf,Mxky-Mkf2*2,Mkw,Mkh+Mkf2*2);
      
      fill(Fx3,255, Fx3);
      rect(Mxkx+Mka*5-Mkf,Mxky-Mkf2*3,Mkw,Mkh+Mkf2*3);
      
      fill(Fx4,255, Fx4);  
      rect(Mxkx+Mka*7-Mkf,Mxky-Mkf2*4,Mkw,Mkh+Mkf2*4);
      
      fill(255,255,Fx5);
      rect(Mxkx+Mka*9-Mkf,Mxky-Mkf2*5,Mkw,Mkh+Mkf2*5);  
      
      fill(255,255,Fx6);
      rect(Mxkx+Mka*11-Mkf,Mxky-Mkf2*6,Mkw,Mkh+Mkf2*6);
       
      fill(255,255,Fx7);  
      rect(Mxkx+Mka*13-Mkf,Mxky-Mkf2*7,Mkw,Mkh+Mkf2*7);
      
      fill(255,Fx8,Fx8);
      rect(Mxkx+Mka*15-Mkf,Mxky-Mkf2*8,Mkw,Mkh+Mkf2*8);
      
      fill(255,Fx9,Fx9);  
      rect(Mxkx+Mka*17-Mkf,Mxky-Mkf2*9,Mkw,Mkh+Mkf2*9);
      
      fill(255,Fx10,Fx10);
      rect(Mxkx+Mka*19-Mkf,Mxky-Mkf2*10,Mkw,Mkh+Mkf2*10);  
    }
    
    
    fill(0,0,0);
    if (isInGame) {
    text("Return",menux+75,menuy3+30,menuw,menuh);  
}else{
    text("Main menu",menux+54,menuy3+30,menuw,menuh);  
}
    
    text("Music Volume",menux+45,250,menuw,menuh); 
    text("Sound Effects Volume",menux+8,450,menuw,menuh); 

     //slut på kasser
    
}
}