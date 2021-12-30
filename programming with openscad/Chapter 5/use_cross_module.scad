use <parameter_cross_module.scad>

linear_extrude(30) {
  difference() {
    cross(100, 20);
    offset(-2) {
      cross(100, 20);
    }
  }
}