module FootprintOutline_3X2HDR_100 () 
{
	module pin(x,y)
	{
		pinSide = 0.6;
		translate([x-pinSide/2,y-pinSide/2,-3.3]) cube([pinSide,pinSide,12]);
	}
	color("yellow") {
		for (ix=[0:2]) {
			for (iy=[0,1]) {
				pin(ix*2.54, iy*2.54);
			}
		}
	}
	color("white")
	translate([-2.54,-1.6,0])
	cube([10.34,5.75,1.5]);
}

//FootprintOutline_3X2HDR_100 ();

