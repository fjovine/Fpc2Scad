module dipPin(angle) 
{
	rotate([0,0,angle]) {
		translate([-1.27/2,0,2.4]) cube([1.27, 2, 0.2]);  
		translate([-1.27/2,0,0]) cube([1.27, 0.2, 2.4]);  
		translate([-0.25,0,-3.5]) cube([0.5, 0.2, 3.5]);
	}
}

module dipBody(numPin)
{
  difference() {
  	  translate([-1.27,0.3, 0.5]) cube([2.54*numPin/2, 7, 3.8]);
  	  translate([0,1,3]) cylinder(r=0.5, h=3, $fn=10);
  }
}
