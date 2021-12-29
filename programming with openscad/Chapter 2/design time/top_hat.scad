$fn=75;
union() {
  minkowski() {
    cylinder(h=30, r1=8, r2=10);
    sphere(r=2);
  }
  
}
minkowski() {
  cylinder(r=18, h=3, center=true);
  sphere(r=2);  
}