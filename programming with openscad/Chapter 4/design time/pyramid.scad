for (i=[1:10]) {
  translate([0, 0, i*10]) {
    cube(size=[i*20, i*20, 10], center=true);
  }
}
