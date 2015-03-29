module FootprintOutline_14DIP300 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [-1.270000,1.270000],[16.510000,1.270000],
      [16.510000,6.350000],
      [-1.270000,6.350000],
      [-1.270000,1.270000],
    ]);
    polygon([
      [-1.270000,2.540000],[0.000000,2.540000],
      [0.000000,5.080000],
      [-1.270000,5.080000],
      [-1.270000,2.540000],
    ]);
  }
  translate([0.000,0.000,0]) pin(); 
  translate([2.540,0.000,0]) pin(); 
  translate([5.080,0.000,0]) pin(); 
  translate([7.620,0.000,0]) pin(); 
  translate([10.160,0.000,0]) pin(); 
  translate([12.700,0.000,0]) pin(); 
  translate([15.240,0.000,0]) pin(); 
  translate([15.240,7.620,0]) pin(); 
  translate([12.700,7.620,0]) pin(); 
  translate([10.160,7.620,0]) pin(); 
  translate([7.620,7.620,0]) pin(); 
  translate([5.080,7.620,0]) pin(); 
  translate([2.540,7.620,0]) pin(); 
  translate([0.000,7.620,0]) pin(); 
}

//FootprintOutline_14DIP300();
