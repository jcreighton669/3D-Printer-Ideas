$fn=50;
union() {
  translate([0, 0, -5]) {
    cylinder(r1=0, r2=10, h=10, center=true);
  }
  translate([0, 0, 1.5]) {
    cylinder(r1=10, r2=6, h=3, center=true); 
  }
  translate([0, 0, 5]) {
    cylinder(r=2, h=6, center=true);
  }
}