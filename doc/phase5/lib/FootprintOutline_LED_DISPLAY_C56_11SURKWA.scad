module pinA(x,y)
{
	pinSide = 0.5;
	translate([x-pinSide/2,y-pinSide/2,-4]) cube([pinSide,pinSide,5]);
}

module FootprintOutline_LED_DISPLAY_C56_11SURKWA ()
{
	color("gainsboro") {
		for (ix=[0:18]) {
			pinA(ix*2.54, 0);
			pinA(ix*2.54, 15.24);
		}
	}
	color("white")
	translate([-3.56,-1.88,0])
	cube([50.3,19,8.1]);
}
