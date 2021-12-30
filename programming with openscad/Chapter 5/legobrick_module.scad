module LEGObrick(studs_per_row=4) {
  $fn=30;

  width = studs_per_row * 8;
  
  cube([width, 16, 9.6]);

  for (x_position=[4:8:width-4]) {
    translate([x_position, 4, 1.7]) {
      cylinder(h=9.6, d=4.8);
    }
    translate([x_position, 12, 1.7]) {
      cylinder(h=9.6, d=4.8);
    }
  }  
}

LEGObrick(6);