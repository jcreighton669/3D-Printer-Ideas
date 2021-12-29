$fn=100;

translate([-10, 10, 0]) {
  cube(size=[20, 10, 10], center=true);
}
translate([20, 0, 0]) {
  sphere(r=5);
}
translate([0, 0, -10]) {
  cylinder(r1=2, r2=2, h=30, center=true);
}