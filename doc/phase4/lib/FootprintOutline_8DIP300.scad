module FootprintOutline_8DIP300 () {
  include<diplib.scad>	
  color("gray")
  dipBody(8);
  translate([0.000,0.000,0]) dipPin(); 
  translate([2.540,0.000,0]) dipPin(); 
  translate([5.080,0.000,0]) dipPin(); 
  translate([7.620,0.000,0]) dipPin(); 
  translate([7.620,7.620,0]) dipPin(180); 
  translate([5.080,7.620,0]) dipPin(180); 
  translate([2.540,7.620,0]) dipPin(180); 
  translate([0.000,7.620,0]) dipPin(180); 
}

//FootprintOutline_8DIP300();
