$fn=50;
union() {
  resize([18, 40, 1]){
    cylinder(r=10, h=3, center=true);
  }
  translate([-6.5, 8, -2.75]) {
    rotate([10, 10, 10]) {
      cylinder(r=1, h=6, center=true);
    }
  }
  translate([6.5, 8, -2.75]) {
    rotate([10, -10, -10]) {
      cylinder(r=1, h=6, center=true);
    }
  }
  translate([6.5, -8, -2.75]) {
    rotate([-10, -10, 10]) {
      cylinder(r=1, h=6, center=true);
    }
  }
  translate([-6.5, -8, -2.75]) {
    rotate([-10, 10, -10]) {
      cylinder(r=1, h=6, center=true);
    }
  }
}
