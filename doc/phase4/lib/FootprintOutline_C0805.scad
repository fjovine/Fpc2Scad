module FootprintOutline_C0805 () {
  module pin() {
     color("gray") { translate([-0.1,-0.625,0]) cube([0.3,1.25,1]); }
  }
  color("black")
    translate([-0.05, -0.575, 0.05])
    cube([2,1.15,0.9]);
  translate([0.000,0.000,0]) pin(); 
  translate([1.900,0.000,0]) pin(); 
}

//FootprintOutline_C0805();
