PFont font, elements;
int midPoint(int a, int b) {
  return (a+b)/2;
}
String[] element = {
  "H]", "C]", "N]", "O]", "P]", "S]", "F]", "Na", "Cl", "Br", "I]", "Fe"
};
int[][] atoms = {{400, 400, 1}, {500, 400, 1}, {400, 300, 0}, {500, 300, 0}, {300, 400, 0}, {400, 500, 0}, {500, 500, 0}, {600, 400, 3}, {700, 400, 0}};
int[][] bonds = {{0, 1, 0}, {0, 2, 0}, {1, 3, 0}, {0, 4, 0}, {0, 5, 0}, {1, 6, 0}, {1, 7, 0}, {7, 8, 0}};
String[] bondNames = {
  "Single", "Double", "Triple", "Up", "Down"
};

void setup() {
  size(1000, 800);
  font = createFont("century", 20);
  elements = createFont("elements", 30);
  textAlign(CENTER, CENTER);
  textSize(30);
  background(80, 80, 100);
  stroke(120, 120, 140);
  strokeWeight(3);
}

void draw() {
  fill(220, 220, 240);
  textFont(font);
  for(int i = 0; i < bonds.length; i++){
    line(atoms[bonds[i][0]][0], atoms[bonds[i][0]][1], atoms[bonds[i][1]][0], atoms[bonds[i][1]][1]);
    text(bondNames[bonds[i][2]], midPoint(atoms[bonds[i][0]][0], atoms[bonds[i][1]][0]), midPoint(atoms[bonds[i][0]][1], atoms[bonds[i][1]][1]));
  }
  textFont(elements);
  for(int i = 0; i < atoms.length; i++){
    text(element[atoms[i][2]], atoms[i][0], atoms[i][1]);
  }
}
