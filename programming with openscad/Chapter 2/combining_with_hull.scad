// $fn=50;
hull() {
  translate([10, 0, 0]) {
    sphere(r=8);
  }
  translate([-10, 0, 0]) {
    cube(size=[4, 4, 4], center=true);
  }
}