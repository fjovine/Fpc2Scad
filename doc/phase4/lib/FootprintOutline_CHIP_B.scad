module FootprintOutline_CHIP_B () {
  module pin() {
     color("gray") { translate([-0.2,-0.85,0]) cube([0.3,1.6,1]); }
  }
  color("black")
    translate([-0.15, -0.8, 0.05])
    cube([4.05,1.5,0.9]);
  translate([0.000,0.000,0]) pin(); 
  translate([3.988,0.000,0]) pin(); 
}

//FootprintOutline_CHIP_B();
