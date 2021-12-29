difference() {
  translate([0, 0, 3]) {
    cube(size=[24, 24, 15], center=true);
  }
  rotate([90, 90, 0]) {
    translate([-10, 0, 0]) {
      cylinder(r=10, h=110, center=true);  
    }
  }
}