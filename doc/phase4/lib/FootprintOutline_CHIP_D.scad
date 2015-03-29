module FootprintOutline_CHIP_D () {
  module pin(rotate) {
     color("gray") { rotate([0,0,rotate]) translate([-0.2,-1.6,0]) cube([0.8,3.2,1]); }
  }
  color("black")
    translate([-0.15, -1.55, 0.05])
    cube([7.05,3.1,0.9]);
  translate([0.000,0.000,0]) pin(); 
  translate([7.010,0.000,0]) pin(180); 
}

//FootprintOutline_CHIP_D();
