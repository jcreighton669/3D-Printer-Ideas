difference() {
	cube([100, 50, 30]);
	translate([2, 2, 2])
		cube([100-4, 50-4, 30]);
	translate([-1, 30, 10])
		rotate([0, 90, 0])
		cylinder(h=10, d=5);
}

translate([5, 5, 0])
	cube(10);