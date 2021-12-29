$fn=50;
union() {
  cylinder(r=10, h=3, center=true);
  translate([-13, 0, 0]) {
    cylinder(r=5, h=3, center=true);
  }
  translate([0, 13, 0]) {
    cylinder(r=5, h=3, center=true);
  }
}

