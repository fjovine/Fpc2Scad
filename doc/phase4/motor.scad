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
  module pin() {
     color("gray") { translate([-0.2,-0.85,0]) cube([0.3,1.6,1]); }
  }
  color("black")
    translate([-0.15, -0.8, 0.05])
    cube([4.05,1.5,0.9]);
  translate([0.000,0.000,0]) pin(); 
  translate([3.988,0.000,0]) pin(); 
}

//FootprintOutline_CHIP_B();
module FootprintOutline_CHIP_D () {
  module pin(rotate) {
     color("gray") { rotate([0,0,rotate]) translate([-0.2,-1.6,0]) cube([0.8,3.2,1]); }
  }
  color("black")
    translate([-0.15, -1.55, 0.05])
    cube([7.05,3.1,0.9]);
  translate([0.000,0.000,0]) pin(); 
  translate([7.010,0.000,0]) pin(180); 
}

//FootprintOutline_CHIP_D();
module FootprintOutline_14DIP300 () {
  include<diplib.scad>	
  color("gray")
  dipBody(14);
  translate([0.000,0.000,0]) dipPin(); 
  translate([2.540,0.000,0]) dipPin(); 
  translate([5.080,0.000,0]) dipPin(); 
  translate([7.620,0.000,0]) dipPin(); 
  translate([10.160,0.000,0]) dipPin(); 
  translate([12.700,0.000,0]) dipPin(); 
  translate([15.240,0.000,0]) dipPin(); 
  translate([15.240,7.620,0]) dipPin(180); 
  translate([12.700,7.620,0]) dipPin(180); 
  translate([10.160,7.620,0]) dipPin(180); 
  translate([7.620,7.620,0]) dipPin(180); 
  translate([5.080,7.620,0]) dipPin(180); 
  translate([2.540,7.620,0]) dipPin(180); 
  translate([0.000,7.620,0]) dipPin(180); 
}

//FootprintOutline_14DIP300();
module FootprintOutline_1X2HDR_100 () 
{
	module pin(x,y)
	{
		pinSide = 0.6;
		translate([x-pinSide/2,y-pinSide/2,-3.3]) cube([pinSide,pinSide,12]);
	}
	color("yellow") {
		for (ix=[0:0]) {
			for (iy=[0,1]) {
				pin(ix*2.54, iy*2.54);
			}
		}
	}
	color("white")
	translate([-2.54,-1.6,0])
	cube([5.26,5.75,1.5]);
}

//FootprintOutline_1X2HDR_100 ();

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
module FootprintOutline_HOLE_125_SQR_250 () {
  cs = 5/2;
  cr = 2 * cs / sqrt(3);
  color("gray") {
	translate([0,0,-16]) cylinder(r=cr, h=15, $fn=6);
	cylinder(r=1.5, h=5, $fn=20);
  }
}

//FootprintOutline_HOLE_125_SQR_250();
module FootprintOutline_5X2HDR_100 () 
{
	module pin(x,y)
	{
		pinSide = 0.6;
		translate([x-pinSide/2,y-pinSide/2,-3.3]) cube([pinSide,pinSide,12]);
	}
	color("yellow") {
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
  include<diplib.scad>	
  color("gray")
  dipBody(28);
  translate([0.000,0.000,0]) dipPin(); 
  translate([2.540,0.000,0]) dipPin(); 
  translate([5.080,0.000,0]) dipPin(); 
  translate([7.620,0.000,0]) dipPin(); 
  translate([10.160,0.000,0]) dipPin(); 
  translate([12.700,0.000,0]) dipPin(); 
  translate([15.240,0.000,0]) dipPin(); 
  translate([17.780,0.000,0]) dipPin(); 
  translate([20.320,0.000,0]) dipPin(); 
  translate([22.860,0.000,0]) dipPin(); 
  translate([25.400,0.000,0]) dipPin(); 
  translate([27.940,0.000,0]) dipPin(); 
  translate([30.480,0.000,0]) dipPin(); 
  translate([33.020,0.000,0]) dipPin(); 
  translate([33.020,7.620,0]) dipPin(180); 
  translate([30.480,7.620,0]) dipPin(180); 
  translate([27.940,7.620,0]) dipPin(180); 
  translate([25.400,7.620,0]) dipPin(180); 
  translate([22.860,7.620,0]) dipPin(180); 
  translate([20.320,7.620,0]) dipPin(180); 
  translate([17.780,7.620,0]) dipPin(180); 
  translate([15.240,7.620,0]) dipPin(180); 
  translate([12.700,7.620,0]) dipPin(180); 
  translate([10.160,7.620,0]) dipPin(180); 
  translate([7.620,7.620,0]) dipPin(180); 
  translate([5.080,7.620,0]) dipPin(180); 
  translate([2.540,7.620,0]) dipPin(180); 
  translate([0.000,7.620,0]) dipPin(180); 
}

//FootprintOutline_28DIP300_A5();
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
module FootprintOutline_TO_220 () {
  module pin() {
    translate([-0.75/2,0,-3.55]) cube([0.75,0.5,3.5]); 
    translate([-0.5,0,0]) cube([1,0.5,4.55]); 
  }
  translate([5.12,0,0,])
  rotate([0,0,180])
  difference() {
    union() {
      color("gray")  translate([-2.46,-1.13,4.55])  cube([10,3.13,9.25]);
      color("lightgray") translate([-2.46,-2.4,4.55])  cube([10,1.27,15.4]);
    }
    translate([2.54,0,17.3]) rotate([90,0,0]) cylinder(r=3.7/2, h=3, $fn=10);
  }
  translate([0.000,0.000,0]) pin(); 
  translate([2.540,0.000,0]) pin(); 
  translate([5.080,0.000,0]) pin(); 
}

//FootprintOutline_TO_220();
module FootprintOutline_8DIP300 () {
  include<diplib.scad>	
  color("gray")
  dipBody(8);
  translate([0.000,0.000,0]) dipPin(); 
  translate([2.540,0.000,0]) dipPin(); 
  translate([5.080,0.000,0]) dipPin(); 
  translate([7.620,0.000,0]) dipPin(); 
  translate([7.620,7.620,0]) dipPin(180); 
  translate([5.080,7.620,0]) dipPin(180); 
  translate([2.540,7.620,0]) dipPin(180); 
  translate([0.000,7.620,0]) dipPin(180); 
}

//FootprintOutline_8DIP300();
module FootprintOutline_3X2HDR_100 () 
{
	module pin(x,y)
	{
		pinSide = 0.6;
		translate([x-pinSide/2,y-pinSide/2,-3.3]) cube([pinSide,pinSide,12]);
	}
	color("yellow") {
		for (ix=[0:2]) {
			for (iy=[0,1]) {
				pin(ix*2.54, iy*2.54);
			}
		}
	}
	color("white")
	translate([-2.54,-1.6,0])
	cube([10.34,5.75,1.5]);
}

//FootprintOutline_3X2HDR_100 ();

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
