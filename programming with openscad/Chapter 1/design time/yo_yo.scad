$fn=50;
union() {
  translate([0, 0, -2.5]) {
    cylinder(r1=10, r2=4, h=5, center=true);
  }
  translate([0, 0, 2.5]) {
    cylinder(r1=4, r2=10, h=5, center=true);
  }
}