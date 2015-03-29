module FootprintOutline_BESE039 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [-1.778000,-1.778000],[6.858000,-1.778000],
      [6.858000,2.286000],
      [-1.778000,2.286000],
      [-1.778000,-1.778000],
    ]);
    polygon([
      [-1.778000,1.778000],[6.858000,1.778000],
    ]);
  }
  translate([0.000,0.000,0]) pin(); 
  translate([2.540,0.000,0]) pin(); 
  translate([5.080,0.000,0]) pin(); 
}

//FootprintOutline_BESE039();
