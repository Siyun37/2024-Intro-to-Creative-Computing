void setup(){
  size(600, 600);
  background(150, 180, 230);
}


void draw(){
  int sealevel = 300;
  stroke(255);
  line(0, 300, 600, 300);
  
  if (mousePressed) {

    if (mouseY < 600 - sealevel) {
      //make clouds
      fill(180, 220, 255);
      noStroke();
      circle(mouseX, mouseY, random(10, 50));
      circle(mouseX + 10, mouseY + 10, random(10, 50));
      circle(mouseX + 20, mouseY - 20, random(10, 50));
      circle(mouseX + 15, mouseY - 20, random(10, 50));
      circle(mouseX - 10, mouseY - 25, random(10, 50));
      circle(mouseX - 20, mouseY - 20, random(10, 50));
      circle(mouseX + 10, mouseY - 27, 20);
      circle(mouseX - 10, mouseY - 27, 20);
      //make rains
      stroke(180, 220, 255);
      line(mouseX, mouseY + 30, mouseX, mouseY + random(40, 80));
      line(mouseX + 5, mouseY + 20, mouseX + 5, mouseY + random(20, 60));
      line(mouseX + 20, mouseY + 50, mouseX + 20, mouseY + random(50, 90));
      line(mouseX - 10, mouseY + 25, mouseX - 10, mouseY + random(25, 65));
    }
    
    else {
      //make fishes
      fill(220, 220, 180);
      stroke(240, 200, 180);
      ellipse(mouseX, mouseY, 40, 20);
      triangle(mouseX + 17, mouseY, mouseX + 30, mouseY + 5, mouseX + 30, mouseY - 5);
    }
  }
}
