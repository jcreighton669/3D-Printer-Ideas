diameter = 80;
h1 = 30; 
h2 = 50;
h3 = 100;

module Container(height) {
  $fn=64;
  difference() {
    cylinder(h = height, d=diameter);
    translate([0, 0, 2]) {
      cylinder(h=height, d=diameter-4);
    }
  }
}

module PencilHolder(h1=100, h2=50, h3=40) {
  Container(h1);
  translate([diameter - 1, 0, 0]) {
    Container(h2);
  }
  translate([(diameter-1)/2, (diameter-1)*sin(60), 0]) {
    Container(h3);
  }
}

PencilHolder(h1, h2, h3);