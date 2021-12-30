letter = "J";
diameter = 10;

$fn=32;

module PenCap(letter="J", diameter=8) {
  difference() {
    cylinder(h=30, d=diameter+2);
    translate([0, 0, -2]) {
      cylinder(h=30, d=diameter);
    }
  }
  translate([-9, 1.5, 28]) {
    rotate([90, 0, 0]) {
      translate([9, 9, 0]) {
        cylinder(h=3, d=20);
      }
      color("Blue")
      translate([9, 4, 1]) {
        linear_extrude(3) {
          text(letter, size=13, halign="center");
        }
      }
    }
    
  }
}

PenCap(letter, diameter);