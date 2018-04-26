class Rectangle {
  
  PVector pos;
  float w, h;
  
  Rectangle(PVector position, float wdth, float hght){
    pos = position;
    w = wdth;
    h = hght;
  }
  
  Rectangle(float x, float y, float wdth, float hght){
    pos = new PVector(x, y);
    w = wdth;
    h = hght;
  }
  
  void show(){
    noFill();
    stroke(255);
    strokeWeight(1);
    rect(pos.x, pos.y, w, h);
  }
  
  Segment[] getSidesAsSegmentArray(){
    Segment[] sides = new Segment[4];
    sides[0] = new Segment(pos, pos.x + w, pos.y);
    sides[1] = new Segment(pos.x + w, pos.y, pos.x + w, pos.y + h);
    sides[2] = new Segment(pos.x + w, pos.y + h, pos.x, pos.y + h);
    sides[3] = new Segment(pos.x, pos.y + h, pos);
    return sides;
  }
  
}