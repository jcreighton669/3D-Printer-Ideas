module cross() {
  square(size=[100, 30], center=true);
  square(size=[30, 100], center=true);
}

linear_extrude(30) {
  difference() {
    cross();
    offset(-2) {
      cross();
    }
  }
}