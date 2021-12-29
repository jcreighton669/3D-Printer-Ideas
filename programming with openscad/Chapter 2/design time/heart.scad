
hull() {
  translate([-4, 10, 0]) {
    cylinder(r=5, h=1);
  }  
  cube(size=[1, 1, 1], center=true);
}

hull() {
  translate([-10, 4, 0]) {
    cylinder(r=5, h=1);
  }
  cube(size=[1, 1, 1], center=true);
}
