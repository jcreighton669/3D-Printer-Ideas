minkowski() {
  hull() {
    cylinder(r=10, h=3, center=true);
    translate([-12, -12, 0]) {
      cylinder(r=3, h=2, center=true);
    }
  }
}
