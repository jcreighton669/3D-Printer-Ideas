text("Hello, OpenSCAD", size=10);

translate([0, 30, 0]) {
  text("۩", font="Arial");
}

translate([0, -30, 0]) {
  text(str(123), size=20);
}