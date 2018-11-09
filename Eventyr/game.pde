boolean rectangleIntersect(Sprite r1, float r2x, float r2y, float r2w, float r2h){ 
  //floats til at se afstandene mellem de to objekters forskellige koordinater
  float distanceX = (r1.x +r1.w/2) - (r2x +r2w/2);
  float distanceY = (r1.y + r1.h/2) - (r2y + r2h/2);
  float combinedHalfw = r1.w/2 + r2w/2;
  float combinedHalfH = r1.h/2 + r2h/2;

  //checker de absolute værdier af floatsne for at se om de intersecter
  if (abs(distanceX) < combinedHalfw) { 
    if (abs(distanceY) < combinedHalfH) {
      return true;
    }
  }
  return false;
}