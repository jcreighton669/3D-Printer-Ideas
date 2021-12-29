$fn=25;
difference() {
  sphere(r=10);
  cylinder(h=20, r1=4, r2=4, center=true);
  rotate([0, 90, 0]) {
    cylinder(r=4, h=20, center=true);
  }
  rotate([90, 0, 0]) {
    #cylinder(r=4, h=25, center=true);
  }
}