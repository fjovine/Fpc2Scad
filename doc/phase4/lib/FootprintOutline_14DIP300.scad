module FootprintOutline_14DIP300 () {
  include<diplib.scad>	
  color("gray")
  dipBody(14);
  translate([0.000,0.000,0]) dipPin(); 
  translate([2.540,0.000,0]) dipPin(); 
  translate([5.080,0.000,0]) dipPin(); 
  translate([7.620,0.000,0]) dipPin(); 
  translate([10.160,0.000,0]) dipPin(); 
  translate([12.700,0.000,0]) dipPin(); 
  translate([15.240,0.000,0]) dipPin(); 
  translate([15.240,7.620,0]) dipPin(180); 
  translate([12.700,7.620,0]) dipPin(180); 
  translate([10.160,7.620,0]) dipPin(180); 
  translate([7.620,7.620,0]) dipPin(180); 
  translate([5.080,7.620,0]) dipPin(180); 
  translate([2.540,7.620,0]) dipPin(180); 
  translate([0.000,7.620,0]) dipPin(180); 
}

//FootprintOutline_14DIP300();
