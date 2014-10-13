import javax.media.opengl.GL3;

{PJOGL.PROFILE = 3;}

PShader basic;
 
void setup() {
  size(640, 360, P2D);
  noStroke();
  basic = loadShader("basicFrag.glsl", "basicVert.glsl");
}
 
void draw() {
  shader(basic);
  background(255);
  beginShape(QUADS);
  fill(0, 0, 255); vertex(0,  0);
  fill(0, 255, 255); vertex(width, 0);
  fill(255, 0, 255); vertex(width, height);
  fill(255, 0, 0);  vertex(0, height);
  endShape();
}
