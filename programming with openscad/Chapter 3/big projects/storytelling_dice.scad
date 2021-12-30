$fn=25;
cube_size = 10;
sphere_size = 2;
height = 6;

module ActionDice() {
  difference() {
    minkowski() {
      cube(cube_size, center=true);
      sphere(sphere_size);
    }

    rotate([0, 0, 135]) {
      translate([-height+1, -height/4, height]) {
        linear_extrude(height=2, convexity=5)
        text("Run", size=3.5); 
      }
    }
    rotate([-90, 90, 0]) {
      rotate([0, 0, 45]) {
        translate([-height+1, -height/4, height]) {
          linear_extrude(height=2, convexity=5)
          text("Walk", size=3.5);
        }
      }      
    }
    rotate([0, -90, 0]) {
      rotate([0, 0, -45]) {
        translate([-height+3, -height/4, height]) {
          linear_extrude(height=2, convexity=5)
          text("Fly", size=3.5);
        }
      }      
    }
    rotate([0, -90, 90]) {
      rotate([0, 0, -45]) {
        translate([-height, -height/4, height-1]) {
          linear_extrude(height=2, convexity=5)
          text("Jump", size=3.5);
        }
      }      
    }
    rotate([90, -90, 90]) {
      rotate([0, 0, -45]) {
        translate([-height+1, -height/4, height]) {
          linear_extrude(height=2, convexity=5)
          text("Spin", size=3.5);
        }
      }      
    }
    rotate([0, 180, 90]) {
      rotate([0, 0, 45]) {
        translate([-height+2, -height/4, height]) {
          linear_extrude(height=2, convexity=5)
          text("Roll", size=3.5);
        }
      }      
    }
  }
}

module AnimalDice() {
  difference() {
    minkowski() {
      cube(cube_size, center=true);
      sphere(sphere_size);
    }      
    rotate([0,0, 180]) {
      translate([-height+1, -height/4, height]) {
        linear_extrude(height=2, convexity=5) 
        text("Rat", size=4);
      }
    }      
    rotate([-90, 90, 0]) {
      rotate([0,0, 45]) {
        translate([-height-1, -height/4, height]) {
          linear_extrude(height=2, convexity=5) 
          text("Dragon", size=3);
        }
      }
    }      
    rotate([0, -90, 0]) {
      rotate([0,0, -45]) {
        translate([-height-1, -height/4+.5, height]) {
          linear_extrude(height=2, convexity=5) 
          text("Alligator", size=3); 
        }
      }
    }        
  }
}

module DecisionDice() {
  difference() {
    minkowski() {
      cube(cube_size, center=true);
      sphere(sphere_size);
    }       
    translate([-height+1, -height/4, height]) {
      linear_extrude(height=2, convexity=5) 
      text("Yes", size=4);
    } 
    rotate([0, 180, 0]) {
      translate([-height+1, -height/4, height]) {
        linear_extrude(height=2, convexity=5) 
        text("Yes", size=4);
      }
    }
    rotate([90, 90, 0]) {
      translate([-height+2, -height/4, height]) {
        linear_extrude(height=2, convexity=5) 
        text("No", size=4);
      } 
    }
    rotate([-90, 90, 0]) {
      translate([-height+2, -height/4, height]) {
        linear_extrude(height=2, convexity=5) 
        text("No", size=4);
      } 
    }
    rotate([0, -90, 0]) {
      rotate([0,0, -45]) {
        translate([-height, -height/4, height]) {
          linear_extrude(height=2, convexity=5) 
          text("Maybe", size=3);
        }
      }
    }
    rotate([0, 90, 0]) {
      rotate([0,0, 45]) {
        translate([-height, -height/4, height]) {
          linear_extrude(height=2, convexity=5) 
          text("Maybe", size=3);
        }
      } 
    }
  }
}

module TimeDice() {
  difference() {
    minkowski() {
      cube(cube_size, center=true);
      sphere(sphere_size);
    }
    rotate([0,0, 180]) {
      translate([-height+.5, -height/4, height]) {
        linear_extrude(height=2, convexity=5) 
        text("Today", size=3);
      }
    }
    rotate([-90, 90, 0]) {
      rotate([0,0, 45]) {
        translate([-height, -height/4, height]) {
          linear_extrude(height=2, convexity=5) 
          text("Yesterday", size=2); 
        }
      }
    }
    rotate([0, -90, 0]) {
      rotate([0,0, -45]) {
        translate([-height, -height/4, height]) {
          linear_extrude(height=2, convexity=5) 
          text("Tomorrow", size=2);
        }
      } 
    }     
  }
}

translate([-10,11,0]) {
  rotate([+28,-45,-135]) {
    ActionDice();
  }  
}

translate([11,11,0]) {
  rotate([+17,22,-230]) {
    AnimalDice();
  }
} 

translate([-11,-11,0]) {
  rotate([+43,+40,110]) {
    DecisionDice();
  }
}

translate([11,-11,0]) {
  rotate([+57,+27,181]) {
    TimeDice();
  }
}

translate([-10, 11, 0]) {
  rotate([28, -45, -135]) {
    ActionDice();
  }
  
}