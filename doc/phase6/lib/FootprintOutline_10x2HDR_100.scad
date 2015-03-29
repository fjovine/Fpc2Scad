module pin(x,y)
{
	pinSide = 0.6;
	translate([x-pinSide/2,y-pinSide/2,-3.3]) cube([pinSide,pinSide,12]);
}
module FootprintOutline_10x2HDR_100 () 
{
	color("gainsboro") {
		for (ix=[0:9]) {
			for (iy=[0,1]) {
				pin(ix*2.54, iy*2.54);
			}
		}
	}
	color("white")
	translate([-5.08,-3.2,0])
	difference() 
	{
		cube([33.2,8.95,9]);
		translate([1.44,1.47, 2]) cube ([30.32,6,7.5]);
		translate([14.31,-1,2]) cube([4.4,5,10]);
	}
}

//FootprintOutline_10x2HDR_100 ();

