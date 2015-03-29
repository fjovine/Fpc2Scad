module FootprintOutline_C0805 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [-0.950000,1.100000],[2.850000,1.100000],
      [2.850000,-1.100000],
      [-0.950000,-1.100000],
      [-0.950000,1.100000],
    ]);
  }
  translate([0.000,0.000,0]) pin(); 
  translate([1.900,0.000,0]) pin(); 
}

//FootprintOutline_C0805();
