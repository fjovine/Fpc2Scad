module FootprintOutline_C1206 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [-1.100000,1.300000],[3.900000,1.300000],
      [3.900000,-1.300000],
      [-1.100000,-1.300000],
      [-1.100000,1.300000],
    ]);
  }
  translate([0.000,0.000,0]) pin(); 
  translate([2.800,0.000,0]) pin(); 
}

//FootprintOutline_C1206();
