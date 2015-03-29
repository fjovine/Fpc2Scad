module FootprintOutline_HOLE_125_SQR_250 () {
  cs = 5/2;
  cr = 2 * cs / sqrt(3);
  color("gray") {
	translate([0,0,-16]) cylinder(r=cr, h=15, $fn=6);
	cylinder(r=1.5, h=5, $fn=20);
  }
}

//FootprintOutline_HOLE_125_SQR_250();
