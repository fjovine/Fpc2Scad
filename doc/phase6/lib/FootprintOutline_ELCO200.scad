module FootprintOutline_ELCO200 () 
{
	color("black") translate([2.54,0,0]) cylinder(r=5, h=12, $fn=20);
	color("gainsboro") {
		translate([0,0,-5]) cylinder(r=0.3, h=5, $fn=10);
		translate([5.12,0,-5]) cylinder(r=0.3, h=5, $fn=10);
	}
}

//FootprintOutline_ELCO200();
