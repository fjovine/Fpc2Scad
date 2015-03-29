module FootprintOutline_28DIP300_A5 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [-1.270000,1.270000],[34.290000,1.270000],
      [34.290000,6.350000],
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
  translate([17.780,0.000,0]) pin(); 
  translate([20.320,0.000,0]) pin(); 
  translate([22.860,0.000,0]) pin(); 
  translate([25.400,0.000,0]) pin(); 
  translate([27.940,0.000,0]) pin(); 
  translate([30.480,0.000,0]) pin(); 
  translate([33.020,0.000,0]) pin(); 
  translate([33.020,7.620,0]) pin(); 
  translate([30.480,7.620,0]) pin(); 
  translate([27.940,7.620,0]) pin(); 
  translate([25.400,7.620,0]) pin(); 
  translate([22.860,7.620,0]) pin(); 
  translate([20.320,7.620,0]) pin(); 
  translate([17.780,7.620,0]) pin(); 
  translate([15.240,7.620,0]) pin(); 
  translate([12.700,7.620,0]) pin(); 
  translate([10.160,7.620,0]) pin(); 
  translate([7.620,7.620,0]) pin(); 
  translate([5.080,7.620,0]) pin(); 
  translate([2.540,7.620,0]) pin(); 
  translate([0.000,7.620,0]) pin(); 
}

//FootprintOutline_28DIP300_A5();
