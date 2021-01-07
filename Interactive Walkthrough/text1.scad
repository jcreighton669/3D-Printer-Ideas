$fa = 1;
$fs = 0.4;
difference() {
	union() {
		translate([7.5, 2.5, 0])
			cube([300, 35, 10]);
		translate([7.5, 20, 0])
			cylinder(h=10, d=36);
	}
	translate([20, 10, -2])
		linear_extrude(height =20)
		text("Justin Creighton", size = 20, font="Segoe Script:style=Bold");
	translate([9, 20, -1])
		cylinder(h=20, d=18);
}