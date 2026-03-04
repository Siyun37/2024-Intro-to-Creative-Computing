let resetbutton, treebutton;
let drawingtree = false;

function setup() {
  createCanvas(600,600);
  background(170, 200, 150);
  
  let resetbutton = createButton('reset');
  resetbutton.position(20, 20);
  resetbutton.size(100, 50);
  
  resetbutton.mouseClicked(reset);
  
  let treebutton = createButton('tree');
  treebutton.position(140, 20);
  treebutton.size(100, 50);
  
  treebutton.mouseClicked(treetrue);
  
  initialdrawing();
  
}

function draw() {  
  if (drawingtree == false && mouseIsPressed){
    noStroke();
    fill(250, 220, 180);
    circle(mouseX, mouseY, 30);
  }
  else if (drawingtree == true && mouseIsPressed) {
    maketree();
  }
}

function initialdrawing() {
  let c = random([100, 150, 200, 250, 300]);
  
  //draw house
  fill(240, 240, 100);
  stroke(100, 100, 0);
  rect(420, 100, 60, 40);
  fill(240, 100, 100);
  stroke(100, 0, 0);
  triangle(400 , 100, 450, 50, 500, 100);
  //draw school
  fill(150, 150, 150);
  stroke(100, 100, 100);
  rect(100 + c, 250 + c, 60, 100);
  rect(60 + c, 300 + c, 40, 50);
  rect(160 + c, 300 + c, 40, 50);
  fill(200, 200, 200);
  circle(130 + c, 280 + c, 30);
  //draw workplace
  rect(370 - c, 400 - c, 100, 90);
  fill(150, 180, 230);
  rect(380 - c, 410 - c, 80, 30);
  rect(380 - c, 450 - c, 80, 30);
}

function reset() {
  background(170, 200, 150);
  let c = random([100, 150, 200, 250, 300]);
  drawingtree = false;
  initialdrawing();
}

function treetrue() {
  if (drawingtree == true) {
    drawingtree = false;
  }
  else {
    drawingtree = true;
  }
}

function maketree() {
  fill(130, 30, 30);
  rect(mouseX, mouseY, 20, 40);
  fill(50, 100, 50);
  circle(mouseX + 10, mouseY, 50);
}