PImage photo; 

void setup(){
  
  size(1100,400);
  background(#B2AC93);
  photo = loadImage("7.png");
}

void draw (){

background(#B2AC93);
image(photo,0,0);

println(mouseX+","+mouseY,1,0);


//contorno
fill(#E3E1B9);
beginShape();
noStroke();
vertex(778,17);
vertex(811,22);
vertex(841,55);
vertex(860,130);
vertex(854,193);
vertex(827,192);
vertex(770,256);
vertex(780,158);
vertex(788,100);
vertex(775,32);
vertex(778,17);
endShape();
noFill();

fill(#E3DDA7);
beginShape();
noStroke();
vertex(824,196);
vertex(896,212);
vertex(923,250);
vertex(914,322);
vertex(860,358);
vertex(838,329);
vertex(844,269);
endShape();
noFill();


fill(#EACA47);
beginShape();
noStroke();
vertex(824,196);
vertex(844,269);
vertex(796,347);
vertex(767,373);
vertex(730,385);
vertex(709,388);
vertex(692,358);
vertex(710,321);
vertex(750,247);
endShape();
noFill();


fill(#EACA47);
beginShape();
noStroke();
vertex(773,221);
vertex(760,197);
vertex(750,247);
endShape();
noFill();

fill(#E3D59E);
beginShape();
noStroke();
vertex(717,143);
vertex(780,160);
vertex(773,221);
vertex(760,197);
endShape();
noFill();


fill(#CBAD2F);
beginShape();
noStroke();
vertex(732,162);
vertex(714,144);
vertex(639,168);
vertex(643,175);
endShape();
noFill();

}
