module FootprintOutline_10x2HDR_100 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [9.200000,-3.200000],[-5.300000,-3.200000],
      [-5.300000,5.800000],
      [28.100000,5.800000],
      [28.100000,-3.200000],
      [13.600000,-3.200000],
    ]);
    polygon([
      [9.200000,-3.200000],[9.200000,-2.600000],
      [-4.700000,-2.600000],
      [-4.700000,5.200000],
      [27.500000,5.200000],
      [27.500000,-2.600000],
      [13.600000,-2.600000],
      [13.600000,-3.200000],
    ]);
    polygon([
      [9.200000,-3.200000],[13.600000,-3.200000],
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
  translate([0.000,2.540,0]) pin(); 
  translate([2.540,2.540,0]) pin(); 
  translate([5.080,2.540,0]) pin(); 
  translate([7.620,2.540,0]) pin(); 
  translate([10.160,2.540,0]) pin(); 
  translate([12.700,2.540,0]) pin(); 
  translate([15.240,2.540,0]) pin(); 
  translate([17.780,2.540,0]) pin(); 
  translate([20.320,2.540,0]) pin(); 
  translate([22.860,2.540,0]) pin(); 
}

//FootprintOutline_10x2HDR_100();
