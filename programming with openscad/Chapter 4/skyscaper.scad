num_rows = 10;
num_cols = 6;

building_width = num_cols * 5;
building_height = num_rows * 6;

difference() {
  cube(size=[building_width, 10, building_height]);

  for (z=[1:1:num_rows]) {
    for (x=[0:1:10]) {
      x_pos = x * 5 + 1;
      z_pos = z * 5;
      translate([x_pos, -1, z_pos]) {
        cube(size=[3, 3, 4]);
      } // x loop
    } // z loop
  } // difference
}