linear_extrude(30) {
  difference() {
    union() {
      square(size=[100, 30], center=true);
      square(size=[30, 100], center=true);
    }
    offset(-2) {
      square(size=[100, 30], center=true);
      square(size=[30, 100], center=true);
    }
  }
}