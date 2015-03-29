module FootprintOutline_1X2HDR_100 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
  }
  translate([0.000,0.000,0]) pin(); 
  translate([0.000,2.540,0]) pin(); 
}

//FootprintOutline_1X2HDR_100();
