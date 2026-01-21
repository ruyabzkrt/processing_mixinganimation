float y;
void setup() {
  size(400,400);
  y= 200;
}
void draw() {
  fill(141, 230, 240);
  square(0,0,400);
  noFill();    
  stroke(20);
  
  // section for making the pattern zoom in and out
  //this makes the pattern change as you move the mouse horizontally 
  if ((mouseX>=0)&&(mouseX<100)){
    for (int i = 10; i < 700; i += 50) {
      stroke(255);   // Set the color to white
      circle(y, y, i+5); 
    }
    for (int i = 10; i < 700; i += 50) {
      stroke(0,225,225); // Set the color to cyan
      circle(y, y, i+25); 
    }
  }
  
  else if ((mouseX<=200)&&(mouseX>=100)){ 
    for (int i = 10; i < 700; i += 130) {
      stroke(255);   // Set the color to white
      circle(y, y, i+45); 
    }
    for (int i = 10; i < 700; i += 130) {
      stroke(0,225,225);  // Set the color to cyan 
      circle(y, y, i+105); 
    }
  }
  
  else if ((mouseX<=300)&&(mouseX>200)){ 
    for (int i = 10; i < 700; i += 230) {
      stroke(255);   // Set the color to white
      circle(y, y, i+125); 
    }
    for (int i = 10; i < 700; i += 230) {
      stroke(0,225,225);   // Set the color to cyan
      circle(y, y, i+215); 
    }
  }
  
  else if ((mouseX<=400)&&(mouseX>300)){ 
    for (int i = 10; i < 700; i += 290) {
      stroke(255);   // Set the color to white
      circle(y, y, i+225); 
    }
    for (int i = 10; i < 700; i += 290) {
      stroke(0,225,225);   // Set the color to cyan
      circle(y, y, i+375); 
    }
    
  }
  println(width + ", " + height); //prints window size in loop
  println(mouseX + " : " + mouseY); //prints the coordinates of the mouse
}
