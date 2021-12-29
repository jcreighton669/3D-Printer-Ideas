union() {
  translate([0, 0, 10]) {
    sphere(r=10, $fn=100);
  }
  translate([0, 0, 1]) {
    cylinder(r1=5, r2=3, h=6, center=true, $fn=1000);
  }
}