$fn=50;
union() {
  sphere(r=10);
  translate([0, 0, 10]) {
    sphere(r=7);
  }
  translate([0, 0, 18]) {
    sphere(r=5);
  }
  translate([0, 0, 20]) {
    cylinder(r=3, h=10, center=true);
  }
  translate([0, 0, 25]) {
    cylinder(r=2, h=10, center=true);
  }
  translate([7, 0, 18]) {
    rotate([0, 90, 0]) {
      cylinder(h=5, r1=1.5, r2=0, center=true);
    }
  }
  translate([3.5, 2, 20]) {
    sphere(r=1);
  }
  translate([3.5, -2, 20]) {
    sphere(r=1);
  }
}
