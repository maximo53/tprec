//martinez maximo-comision 5-legajo 121436/9
//https://youtu.be/NGMIIV2Jzfo?feature=shared
PImage imagen;

void setup() {
  size(800, 400); 
  imagen = loadImage("ajedrez.jpeg");
}

void draw() {
  image(imagen, 0, 0, width / 2, height);
  diburec2();
  diburec();
  pintarec(color(250, 0, 0), 150);
  verdistancia(mouseX, mouseY, 600, 200);
}

void diburec() {
  for (int i = 0; i <= 400; i += 100) {
    for (int j = 0; j <= 400; j += 100) {
      if (((i + j) / 100) % 2 == 0) {
        fill(0); 
      } else {
        fill(255); 
      }
      quad(50 + i, j, 100 + i, 50 + j, 50 + i, 100 + j, i, 50 + j);
    }
  }
}

void pintarec(color c, int alpha) {
  for (int i = 0; i <= 400; i += 100) {
    for (int j = 0; j <= 400; j += 100) {
      fill(c, alpha);
      quad(50 + i, j, 100 + i, 50 + j, 50 + i, 100 + j, i, 50 + j);
    }
  }
}

void diburec2() {
  int celeste = int(map(mouseX, 400, width, 0, 255));
  int rosa = int(map(mouseY, 0, height, 0, 105));
  int amarillo = int(map(mouseY, 0, height, 0, 255));
  translate(400, 0);
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 4; j++) {
      if ((i + j) % 2 == 0) {
        fill(0, 255, celeste); 
      } else {
        fill(255, rosa, amarillo);
      }
      rect(100 * i, 100 * j, 100, 100);
    }
  }
}

void verdistancia(float mouseX, float mouseY, int mitadAncho, int mitadAlto) {
  translate(400, 0);
}
