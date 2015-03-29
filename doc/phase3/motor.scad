module Outline() {
  linear_extrude(height=1.6) {
    polygon([
      [0.000000,0.000000],[0.000000,50.800000],
      [76.200000,50.800000],
      [76.200000,0.000000],
      [0.000000,0.000000],
    ]);
  }
}
module FootprintHoles_CHIP_B () {
  translate([0.000,0.000,-5])cylinder(r=0.000, h=10, $fn=20);
  translate([3.988,0.000,-5])cylinder(r=0.000, h=10, $fn=20);
}
module FootprintHoles_CHIP_D () {
  translate([0.000,0.000,-5])cylinder(r=0.000, h=10, $fn=20);
  translate([7.010,0.000,-5])cylinder(r=0.000, h=10, $fn=20);
}
module FootprintHoles_14DIP300 () {
  translate([0.000,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([2.540,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([7.620,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([10.160,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([12.700,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([15.240,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([15.240,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([12.700,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([10.160,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([7.620,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([5.080,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([2.540,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([0.000,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
}
module FootprintHoles_1X2HDR_100 () {
  translate([0.000,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([0.000,2.540,-5])cylinder(r=0.356, h=10, $fn=20);
}
module FootprintHoles_C1206 () {
  translate([0.000,0.000,-5])cylinder(r=0.000, h=10, $fn=20);
  translate([2.800,0.000,-5])cylinder(r=0.000, h=10, $fn=20);
}
module FootprintHoles_HOLE_125_SQR_250 () {
  translate([0.000,0.000,-5])cylinder(r=1.588, h=10, $fn=20);
}
module FootprintHoles_5X2HDR_100 () {
  translate([0.000,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([0.000,2.540,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([2.540,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([2.540,2.540,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([5.080,2.540,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([7.620,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([7.620,2.540,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([10.160,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([10.160,2.540,-5])cylinder(r=0.356, h=10, $fn=20);
}
module FootprintHoles_28DIP300_A5 () {
  translate([0.000,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([2.540,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([7.620,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([10.160,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([12.700,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([15.240,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([17.780,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([20.320,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([22.860,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([25.400,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([27.940,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([30.480,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([33.020,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([33.020,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([30.480,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([27.940,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([25.400,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([22.860,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([20.320,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([17.780,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([15.240,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([12.700,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([10.160,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([7.620,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([5.080,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([2.540,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([0.000,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
}
module FootprintHoles_C0805 () {
  translate([0.000,0.000,-5])cylinder(r=0.000, h=10, $fn=20);
  translate([1.900,0.000,-5])cylinder(r=0.000, h=10, $fn=20);
}
module FootprintHoles_TO_220 () {
  translate([0.000,0.000,-5])cylinder(r=0.572, h=10, $fn=20);
  translate([2.540,0.000,-5])cylinder(r=0.572, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.572, h=10, $fn=20);
}
module FootprintHoles_8DIP300 () {
  translate([0.000,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([2.540,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([7.620,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([7.620,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([5.080,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([2.540,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([0.000,7.620,-5])cylinder(r=0.356, h=10, $fn=20);
}
module FootprintHoles_3X2HDR_100 () {
  translate([0.000,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([0.000,2.540,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([2.540,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([2.540,2.540,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.356, h=10, $fn=20);
  translate([5.080,2.540,-5])cylinder(r=0.356, h=10, $fn=20);
}
module FootprintOutline_CHIP_B () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [-1.143000,1.498600],[5.130800,1.498600],
      [5.130800,-1.498600],
      [-1.143000,-1.498600],
      [-1.143000,1.498600],
    ]);
  }
  translate([0.000,0.000,0]) pin(); 
  translate([3.988,0.000,0]) pin(); 
}
module FootprintOutline_CHIP_D () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [-1.447800,1.625600],[8.458200,1.625600],
      [8.458200,-1.625600],
      [-1.447800,-1.625600],
      [-1.447800,1.625600],
    ]);
  }
  translate([0.000,0.000,0]) pin(); 
  translate([7.010,0.000,0]) pin(); 
}
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
module FootprintOutline_1X2HDR_100 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
  }
  translate([0.000,0.000,0]) pin(); 
  translate([0.000,2.540,0]) pin(); 
}
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
module FootprintOutline_HOLE_125_SQR_250 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
  }
  translate([0.000,0.000,0]) pin(); 
}
module FootprintOutline_5X2HDR_100 () 
{
	module pin(x,y)
	{
		pinSide = 0.6;
		translate([x-pinSide/2,y-pinSide/2,-3.3]) cube([pinSide,pinSide,12]);
	}
	color("gainsboro") {
		for (ix=[0:4]) {
			for (iy=[0,1]) {
				pin(ix*2.54, iy*2.54);
			}
		}
	}
	color("white")
	translate([-2.54,-1.6,0])
	cube([15.42,5.75,1.5]);
}

//FootprintOutline_5X2HDR_100 ();

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
module FootprintOutline_TO_220 () {
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
module FootprintOutline_8DIP300 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [-1.270000,1.270000],[8.890000,1.270000],
      [8.890000,6.350000],
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
  translate([7.620,7.620,0]) pin(); 
  translate([5.080,7.620,0]) pin(); 
  translate([2.540,7.620,0]) pin(); 
  translate([0.000,7.620,0]) pin(); 
}
module FootprintOutline_3X2HDR_100 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
  }
  translate([0.000,0.000,0]) pin(); 
  translate([0.000,2.540,0]) pin(); 
  translate([2.540,0.000,0]) pin(); 
  translate([2.540,2.540,0]) pin(); 
  translate([5.080,0.000,0]) pin(); 
  translate([5.080,2.540,0]) pin(); 
}
/* Begin board */
difference() {
  color("green") Outline();
  translate([13.716,22.860, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_CHIP_D ();
  translate([15.240,33.020, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_C1206 ();
  translate([63.500,38.100, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_CHIP_B ();
  translate([63.500,22.860, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_CHIP_B ();
  translate([7.620,38.100, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_CHIP_B ();
  translate([48.260,45.720, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_5X2HDR_100 ();
  translate([71.120,38.100, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_5X2HDR_100 ();
  translate([71.120,22.860, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_5X2HDR_100 ();
  translate([2.540,22.860, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_5X2HDR_100 ();
  translate([35.560,45.720, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_3X2HDR_100 ();
  translate([2.540,38.100, 0]) rotate([0,0,-180])translate([0,0,1.6])  FootprintHoles_1X2HDR_100 ();
  translate([63.500,30.480, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_C1206 ();
  translate([63.500,15.240, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_C1206 ();
  translate([15.240,38.100, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_C1206 ();
  translate([33.020,40.640, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_28DIP300_A5 ();
  translate([25.400,38.100, 0]) rotate([0,0,-270])translate([0,0,1.6])  FootprintHoles_TO_220 ();
  translate([20.320,27.940, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_8DIP300 ();
  translate([3.810,3.810, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_HOLE_125_SQR_250 ();
  translate([3.810,46.990, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_HOLE_125_SQR_250 ();
  translate([72.390,46.990, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_HOLE_125_SQR_250 ();
  translate([72.390,3.810, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_HOLE_125_SQR_250 ();
  translate([22.860,32.512, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_C1206 ();
  translate([44.704,20.320, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_C0805 ();
  translate([51.308,40.132, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_C0805 ();
  translate([48.260,35.560, 0]) rotate([0,0,-90])translate([0,0,1.6])  FootprintHoles_14DIP300 ();
}
/* C1 */
  translate([13.716,22.860, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_CHIP_D ();
/* C2 */
  translate([15.240,33.020, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_C1206 ();
/* C3 */
  translate([63.500,38.100, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_CHIP_B ();
/* C4 */
  translate([63.500,22.860, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_CHIP_B ();
/* D1 */
  translate([7.620,38.100, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_CHIP_B ();
/* JP1 */
  translate([48.260,45.720, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_5X2HDR_100 ();
/* JP2 */
  translate([71.120,38.100, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_5X2HDR_100 ();
/* JP3 */
  translate([71.120,22.860, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_5X2HDR_100 ();
/* JP4 */
  translate([2.540,22.860, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_5X2HDR_100 ();
/* JP5 */
  translate([35.560,45.720, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_3X2HDR_100 ();
/* JP6 */
  translate([2.540,38.100, 0]) rotate([0,0,-180])translate([0,0,1.6]) FootprintOutline_1X2HDR_100 ();
/* R1 */
  translate([63.500,30.480, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_C1206 ();
/* R2 */
  translate([63.500,15.240, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_C1206 ();
/* R3 */
  translate([15.240,38.100, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_C1206 ();
/* U1 */
  translate([33.020,40.640, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_28DIP300_A5 ();
/* U3 */
  translate([25.400,38.100, 0]) rotate([0,0,-270])translate([0,0,1.6]) FootprintOutline_TO_220 ();
/* Y1 */
  translate([20.320,27.940, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_8DIP300 ();
/* H1 */
  translate([3.810,3.810, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_HOLE_125_SQR_250 ();
/* H2 */
  translate([3.810,46.990, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_HOLE_125_SQR_250 ();
/* H3 */
  translate([72.390,46.990, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_HOLE_125_SQR_250 ();
/* H4 */
  translate([72.390,3.810, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_HOLE_125_SQR_250 ();
/* C5 */
  translate([22.860,32.512, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_C1206 ();
/* C6 */
  translate([44.704,20.320, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_C0805 ();
/* C7 */
  translate([51.308,40.132, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_C0805 ();
/* U2 */
  translate([48.260,35.560, 0]) rotate([0,0,-90])translate([0,0,1.6]) FootprintOutline_14DIP300 ();
