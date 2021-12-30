$fn=50;

cube_size = 10;
sphere_size = 2;
height = 6;

difference() {
  minkowski() {
    cube(cube_size, center=true);
    sphere(r=sphere_size);
  }

  // 1
  translate([0, 0, height]) {
    cylinder(h=2, r1=1, r2=1);
  }

  // 2
  rotate([90, 90, 0]) {
    translate([height/2, height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([-height/2, -height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
  }
  
  // 3
  rotate([0, -90, 0]) {
    translate([0, 0, height]) {
      cylinder(h=2, r1=1, r2=1);
    }
    translate([height/2, -height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([-height/2, height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
  }

  // 4
  rotate([0, 90, 0]) {
    translate([height/2, height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([height/2, -height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([-height/2, -height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([-height/2, height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
  }

  // 5 
  rotate([-90, 90, 0]) {
    translate([0, 0, height]) {
      cylinder(h=2, r1=1, r2=1);
    }
    translate([height/2, height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([height/2, -height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([-height/2, height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([-height/2, -height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
  }
  
  // 6
  rotate([0, 180, 0]) {
    translate([height/2, height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([height/2, -height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([-height/2, -height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([-height/2, height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([0, height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
    translate([0, -height/2, height]) {
      cylinder(h=3, r1=1, r2=1);
    }
  }
  
}