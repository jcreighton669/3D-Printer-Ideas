for (x_position=[10:10:100]) {
  translate([x_position, 30, 0]) {
    cylinder(h=4, r1=4, r2=4);
  }
  echo(str("x:", x_position)); // a good way to check your mental math
}
