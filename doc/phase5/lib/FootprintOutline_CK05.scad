module FootprintOutline_CK05 () {
	color("blue") translate([-1.1, -1.25, 0]) cube([7.2, 2.5, 6.5]);

	color("gainsboro") {
		translate([0,0,-5]) cylinder(r=0.3, h=5, $fn=10);
		translate([5,0,-5]) cylinder(r=0.3, h=5, $fn=10);
	}
}

