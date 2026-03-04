void setup(){
  size(600, 600);
  background(255);
}


void draw(){
  int sealevel = 50;
  int num = 0;
  
  fill(0, 0, 180);
  noStroke();
  rect(0, 600 - sealevel, 600, sealevel);

  if (mousePressed){
    while (sealevel < 600){
      sealevel += num;
      
      fill(0, 0, 180);
      noStroke();
      rect(0, 600 - sealevel, 600, sealevel);
   
      if (mouseY < 600 - sealevel){
        //make clouds
        fill(150, 200, 255);
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
        stroke(150, 200, 255);
        line(mouseX, mouseY + 30, mouseX, mouseY + random(40, 80));
        line(mouseX + 5, mouseY + 20, mouseX + 5, mouseY + random(20, 60));
        line(mouseX + 20, mouseY + 50, mouseX + 20, mouseY + random(50, 90));
        line(mouseX - 10, mouseY + 25, mouseX - 10, mouseY + random(25, 65));
      }
      
      else {
        //make fishes
        fill(200, 200, 0);
        stroke(230, 170, 0);
        ellipse(mouseX, mouseY, 40, 20);
        triangle(mouseX + 17, mouseY, mouseX + 30, mouseY + 5, mouseX + 30, mouseY - 5);
      }
      num += 10;
    }
  }
}
