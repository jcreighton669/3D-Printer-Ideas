module cross(width=30, length=100) {
  square(size=[length, width], center=true);
  square(size=[width, length], center=true);
}