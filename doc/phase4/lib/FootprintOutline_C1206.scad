module FootprintOutline_C1206 () {
  module pin() {
     color("gray") { translate([-0.2,-0.85,0]) cube([0.3,1.6,1]); }
  }
  color("black")
    translate([-0.15, -0.8, 0.05])
    cube([3.05,1.5,0.9]);
  translate([0.000,0.000,0]) pin(); 
  translate([2.800,0.000,0]) pin(); 
}

//FootprintOutline_C1206();
