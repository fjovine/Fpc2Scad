module FootprintOutline_5X2HDR_100 () 
{
	module pin(x,y)
	{
		pinSide = 0.6;
		translate([x-pinSide/2,y-pinSide/2,-3.3]) cube([pinSide,pinSide,12]);
	}
	color("gainsboro") {
		for (ix=[0:4]) {
			for (iy=[0,1]) {
				pin(ix*2.54, iy*2.54);
			}
		}
	}
	color("white")
	translate([-2.54,-1.6,0])
	cube([15.42,5.75,1.5]);
}

//FootprintOutline_5X2HDR_100 ();

