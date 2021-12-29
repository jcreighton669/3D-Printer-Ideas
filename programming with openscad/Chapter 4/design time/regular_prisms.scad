for (s=[3:10]) {
  translate([(s-3)*10+3, 0, 0]) {
    cylinder(r=4, h=3, $fn=s);
  }
}
