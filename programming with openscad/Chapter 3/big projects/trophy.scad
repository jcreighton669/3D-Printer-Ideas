$fa=1;
$fs=0.5;
base_radius = 30;
message = "1st Place";

rotate_extrude() {
  union() {
    difference() {
      square(size=[.3*base_radius, .5*base_radius]);
      translate([.25*base_radius, .25*base_radius]) {
        circle(r=.2*base_radius);
      }
    }
    translate([0, -.2*base_radius]) {
      square(size=[.4*base_radius, .2*base_radius]);
    }

    translate([.3*base_radius, .5*base_radius]) {
      circle(r=.01*base_radius);
    }
    translate([.3*base_radius, 0]) {
      circle(r=.01*base_radius);
    }
    translate([.3*base_radius, .05*base_radius]) {
      circle(r=.01*base_radius);
    }

    intersection(){
      translate([0,2.4*base_radius]) scale([1.25, 4]) 
        difference(){
          circle(.5*base_radius);
          circle(.45*base_radius);
        } 
        square([base_radius, 1.5*base_radius]);//keep the lower-right quadrant of the ellipse
    }
  }
}
minkowski() {
  union() {
    translate([0, 0, -.35*base_radius]) {
      cube([base_radius, base_radius, .3*base_radius], center=true);
    }
    translate([0, 0, -.65*base_radius]) {
      rotate([0, 0, 45]) {
        cylinder(h=4, r1=1.1*base_radius, r2=.9*base_radius, $fn=4);
      }
    }
  }
  sphere(r=1);
}
translate([-.4*base_radius, -.5*base_radius, -.4*base_radius]) {
  rotate([90, 0, 0]) {
    linear_extrude(height=3)
    text(message, size=4);
  }
  
}
