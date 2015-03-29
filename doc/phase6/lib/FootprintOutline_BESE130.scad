module pinC(x,y)
{
	pinHSide = 0.8;
	pinVSide = 0.5;
	
	translate([x-pinHSide/2,y-pinVSide/2,-3.5]) cube([pinHSide,pinVSide,5]);
}

module FootprintOutline_BESE130 () 
{
	pinC(0,0);
	pinC(0,5);
	pinC(5,0);
	pinC(5,5);
	translate([2.5,2.5,1.5])
	color("red") {
		translate([-7.5/2,-7.5/2,5.8])
			cube([7.5,7.5,4]);
		difference() {
			cylinder(r=6,h=5.8, $fn=20);
			translate([-5-5.4,-10,-1])
				cube([5,20,10]);
		}
	}
}
