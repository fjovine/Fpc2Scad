module Outline() {
  linear_extrude(height=1.6) {
    polygon([
      [-4.445000,11.430000],[-4.445000,-27.305000],
      [91.440000,-27.305000],
      [91.440000,11.430000],
      [-4.445000,11.430000],
    ]);
  }
}
module FootprintHoles_MOUNTING_HOLE () {
  translate([0.000,0.000,-5])cylinder(r=1.753, h=10, $fn=20);
}
module FootprintHoles_BESE130 () {
  translate([0.000,0.000,-5])cylinder(r=0.508, h=10, $fn=20);
  translate([4.978,0.000,-5])cylinder(r=0.508, h=10, $fn=20);
  translate([0.000,4.978,-5])cylinder(r=0.508, h=10, $fn=20);
  translate([4.978,4.978,-5])cylinder(r=0.508, h=10, $fn=20);
}
module FootprintHoles_LED_DISPLAY_C56_11SURKWA () {
  translate([0.000,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([2.540,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([7.620,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([10.160,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([12.700,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([15.240,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([17.780,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([20.320,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([22.860,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([25.400,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([27.940,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([30.480,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([33.020,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([35.560,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([38.100,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([40.640,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([43.180,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([43.180,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([40.640,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([38.100,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([35.560,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([33.020,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([30.480,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([27.940,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([25.400,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([22.860,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([20.320,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([17.780,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([15.240,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([12.700,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([10.160,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([7.620,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([5.080,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([2.540,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([0.000,15.240,-5])cylinder(r=0.445, h=10, $fn=20);
}
module FootprintHoles_RC05 () {
  translate([0.000,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([10.160,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
}
module FootprintHoles_ELCO200 () {
  translate([0.000,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
}
module FootprintHoles_BESE005 () {
  translate([0.000,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([6.502,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
}
module FootprintHoles_10x2HDR_100 () {
  translate([0.000,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([2.540,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([7.620,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([10.160,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([12.700,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([15.240,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([17.780,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([20.320,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([22.860,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([0.000,2.540,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([2.540,2.540,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([5.080,2.540,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([7.620,2.540,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([10.160,2.540,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([12.700,2.540,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([15.240,2.540,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([17.780,2.540,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([20.320,2.540,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([22.860,2.540,-5])cylinder(r=0.445, h=10, $fn=20);
}
module FootprintHoles_BESE039 () {
  translate([0.000,0.000,-5])cylinder(r=0.572, h=10, $fn=20);
  translate([2.540,0.000,-5])cylinder(r=0.572, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.572, h=10, $fn=20);
}
module FootprintHoles_CK05 () {
  translate([0.000,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
  translate([5.080,0.000,-5])cylinder(r=0.445, h=10, $fn=20);
}
module FootprintHoles_28DIP300 () {
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
module FootprintOutline_MOUNTING_HOLE () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
  }
  translate([0.000,0.000,0]) pin(); 
}
module pinC(x,y)
{
	pinHSide = 0.8;
	pinVSide = 0.5;
	
	translate([x-pinHSide/2,y-pinVSide/2,-3.5]) cube([pinHSide,pinVSide,5]);
}

module FootprintOutline_BESE130 () 
{
	pinC(0,0);
	pinC(0,5);
	pinC(5,0);
	pinC(5,5);
	translate([2.5,2.5,1.5])
	color("red") {
		translate([-7.5/2,-7.5/2,5.8])
			cube([7.5,7.5,4]);
		difference() {
			cylinder(r=6,h=5.8, $fn=20);
			translate([-5-5.4,-10,-1])
				cube([5,20,10]);
		}
	}
}
module pinA(x,y)
{
	pinSide = 0.5;
	translate([x-pinSide/2,y-pinSide/2,-4]) cube([pinSide,pinSide,5]);
}

module FootprintOutline_LED_DISPLAY_C56_11SURKWA ()
{
  module digit() {
    h = 0.5;
    color("red") {    
      linear_extrude(height=h) {
        polygon([
          [-6.42705,13.4373],
          [-1.48321,13.4284],
          [-1.72705,11.9373],
          [-6.62705,11.9373],
          [-6.42705,13.4373]       	       
        ]);
      }
      linear_extrude(height=h) {
        polygon([
          [-0.820096,6.5821],
          [-1.48469,6.57927],
          [-2.13071,7.3222],
          [-1.21013,13.4756],
          [-0.313573,12.9672],
          [-0.0795887,12.232],
          [-0.820096,6.5821]       	       
        ]);
      }
      linear_extrude(height=h) {
        polygon([
          [-3.1868,-0.791446],
          [-2.32705,5.43726],
          [-1.52705,6.13726],
          [-0.827055,6.13726],
          [-1.60302,0.187348],
          [-1.99611,-0.397055],
          [-2.62705,-0.762742],
          [-3.1868,-0.791446]       	       
        ]);
      }
      linear_extrude(height=h) {
        polygon([
          [-8.25954,0.661463],
          [-3.3157,0.652648],
          [-3.55954,-0.838537],
          [-8.45954,-0.838537],
          [-8.25954,0.661463]       	       
        ]);
      }
      linear_extrude(height=h) {
        polygon([
          [-9.12053,6.12237],
          [-8.45594,6.1252],
          [-7.80992,5.38227],
          [-8.7305,-0.771093],
          [-9.62705,-0.262742],
          [-9.86104,0.4725],
          [-9.12053,6.12237]       	       
        ]);
      }     	       
      linear_extrude(height=h) {
        polygon([
          [-6.72276,13.4193],
          [-7.5825,7.19056],
          [-8.3825,6.49056],
          [-9.0825,6.49056],
          [-8.30654,12.4405],
          [-7.91345,13.0249],
          [-7.2825,13.3906],
          [-6.72276,13.4193]
        ]);
      }
      linear_extrude(height=h) {
        polygon([
          [-8.16477,6.31168],
          [-7.27873,7.08556],
          [-2.41113,7.08556],
          [-1.8167,6.33411],
          [-2.59058,5.58266],
          [-7.49183,5.58266]       	       
        ]);
      }
      cylinder(r=0.76, h=h, $fn=10);
    }
  }
  color("gainsboro") {
    for (ix=[0:18]) {
      pinA(ix*2.54, 0);
      pinA(ix*2.54, 15.24);
    }
  }
  color("white")
  translate([-3.56,-1.88,0])
  cube([50.3,19,8.1]);
  
  translate([0,0,9])
  for (i=[0:3]) {
    translate([7.2+12.7*i,1.55,0]) digit();
  }
}

//FootprintOutline_LED_DISPLAY_C56_11SURKWA ();
module FootprintOutline_RC05 () {
  rad = 1.3;
  sotto = 0.1;
  len = 6.5;
  pindist = 10.16;
  francopin = (pindist-len)/2;

  module pin(rotate) {
    rotate([0,0,rotate]) {
      translate([0,0,-2]) cylinder(r=0.3, h=rad+sotto+2, $fn=10); 
      translate([0,0,rad+sotto])
      rotate([0,90,0]) cylinder(r=0.3, h=francopin, $fn=10);
    }
  }
  color("red")
  translate([(pindist-len)/2,0,rad + sotto])
  rotate([0,90,0])
  cylinder(r=rad, h=len,$fn=20);
  translate([0.000,0.000,0]) pin(); 
  translate([10.160,0.000,0]) pin(180); 
}

//FootprintOutline_RC05();
module FootprintOutline_ELCO200 () 
{
	color("black") translate([2.54,0,0]) cylinder(r=5, h=12, $fn=20);
	color("gainsboro") {
		translate([0,0,-5]) cylinder(r=0.3, h=5, $fn=10);
		translate([5.12,0,-5]) cylinder(r=0.3, h=5, $fn=10);
	}
}

//FootprintOutline_ELCO200();
module FootprintOutline_BESE005 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color([0.1,0.1,0.1]) {
  translate([0,0,1.5])
  linear_extrude(height=6) {
    polygon([
      [0.050800,-5.080000],[0.050800,-7.772400],
      [6.451600,-7.772400],
      [6.451600,-5.080000],
      [6.781800,-4.851400],
      [8.102600,-3.530600],
      [8.940800,-1.854200],
      [9.245600,0.000000],
      [8.940800,1.854200],
      [8.102600,3.530600],
      [6.781800,4.851400],
      [5.105400,5.689600],
      [3.251200,5.994400],
      [1.371600,5.689600],
      [-0.279400,4.851400],
      [-1.600200,3.530600],
      [-2.438400,1.854200],
      [-2.743200,0.000000],
      [-2.438400,-1.854200],
      [-1.600200,-3.530600],
      [-0.279400,-4.851400],
      [0.050800,-5.080000],
    ]);
  }
    translate([3.25,0,0])
    cylinder(r2=6, r1=5,h=1.5,$fn=20);
}
  translate([0.000,0.000,0]) pin(); 
  translate([6.502,0.000,0]) pin(); 
}

//FootprintOutline_BESE005();
module pin(x,y)
{
	pinSide = 0.6;
	translate([x-pinSide/2,y-pinSide/2,-3.3]) cube([pinSide,pinSide,12]);
}
module FootprintOutline_10x2HDR_100 () 
{
	color("gainsboro") {
		for (ix=[0:9]) {
			for (iy=[0,1]) {
				pin(ix*2.54, iy*2.54);
			}
		}
	}
	color("white")
	translate([-5.08,-3.2,0])
	difference() 
	{
		cube([33.2,8.95,9]);
		translate([1.44,1.47, 2]) cube ([30.32,6,7.5]);
		translate([14.31,-1,2]) cube([4.4,5,10]);
	}
}

//FootprintOutline_10x2HDR_100 ();

module FootprintOutline_BESE039 () {
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

//FootprintOutline_BESE039();
module FootprintOutline_CK05 () {
	color("blue") translate([-1.1, -1.25, 0]) cube([7.2, 2.5, 6.5]);

	color("gainsboro") {
		translate([0,0,-5]) cylinder(r=0.3, h=5, $fn=10);
		translate([5,0,-5]) cylinder(r=0.3, h=5, $fn=10);
	}
}

module FootprintOutline_28DIP300 () {
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

//FootprintOutline_28DIP300();
/* Begin board */
difference() {
  color("green") Outline();
  translate([50.165,-20.320, 0]) rotate([0,180,0]) rotate([0,0,0]) FootprintHoles_28DIP300 ();
  translate([81.915,-2.540, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_BESE130 ();
  translate([69.215,-16.510, 0]) rotate([0,180,0]) rotate([0,0,0]) FootprintHoles_BESE005 ();
  translate([28.575,0.000, 0]) rotate([0,180,0]) rotate([0,0,180]) FootprintHoles_RC05 ();
  translate([31.115,2.540, 0]) rotate([0,180,0]) rotate([0,0,180]) FootprintHoles_RC05 ();
  translate([52.705,0.000, 0]) rotate([0,180,0]) rotate([0,0,0]) FootprintHoles_RC05 ();
  translate([53.975,2.540, 0]) rotate([0,180,0]) rotate([0,0,0]) FootprintHoles_RC05 ();
  translate([18.415,-7.620, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_LED_DISPLAY_C56_11SURKWA ();
  translate([52.705,-24.130, 0]) rotate([0,180,0]) rotate([0,0,0]) FootprintHoles_RC05 ();
  translate([60.325,-24.130, 0]) rotate([0,180,0]) rotate([0,0,0]) FootprintHoles_CK05 ();
  translate([26.035,-24.130, 0]) rotate([0,180,0]) rotate([0,0,180]) FootprintHoles_CK05 ();
  translate([17.145,-24.130, 0]) rotate([0,180,0]) rotate([0,0,180]) FootprintHoles_CK05 ();
  translate([40.005,-24.130, 0]) rotate([0,180,0]) rotate([0,0,0]) FootprintHoles_CK05 ();
  translate([53.975,-14.605, 0]) rotate([0,180,0]) rotate([0,0,270]) FootprintHoles_CK05 ();
  translate([79.375,-24.130, 0]) rotate([0,180,0]) rotate([0,0,180]) FootprintHoles_BESE039 ();
  translate([79.375,-17.780, 0]) rotate([0,180,0]) rotate([0,0,180]) FootprintHoles_CK05 ();
  translate([85.725,-11.430, 0]) rotate([0,180,0]) rotate([0,0,0]) FootprintHoles_ELCO200 ();
  translate([8.255,-19.050, 0]) rotate([0,180,0]) rotate([0,0,90]) FootprintHoles_10x2HDR_100 ();
  translate([72.390,0.000, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_MOUNTING_HOLE ();
  translate([0.000,0.000, 0]) rotate([0,0,0])translate([0,0,1.6])  FootprintHoles_MOUNTING_HOLE ();
}
/* U2 */
  translate([50.165,-20.320, 0]) rotate([0,180,0]) rotate([0,0,0])FootprintOutline_28DIP300 ();
/* S1 */
  translate([81.915,-2.540, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_BESE130 ();
/* B1 */
  translate([69.215,-16.510, 0]) rotate([0,180,0]) rotate([0,0,0])FootprintOutline_BESE005 ();
/* R4 */
  translate([28.575,0.000, 0]) rotate([0,180,0]) rotate([0,0,180])FootprintOutline_RC05 ();
/* R3 */
  translate([31.115,2.540, 0]) rotate([0,180,0]) rotate([0,0,180])FootprintOutline_RC05 ();
/* R2 */
  translate([52.705,0.000, 0]) rotate([0,180,0]) rotate([0,0,0])FootprintOutline_RC05 ();
/* R1 */
  translate([53.975,2.540, 0]) rotate([0,180,0]) rotate([0,0,0])FootprintOutline_RC05 ();
/* U1 */
  translate([18.415,-7.620, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_LED_DISPLAY_C56_11SURKWA ();
/* R5 */
  translate([52.705,-24.130, 0]) rotate([0,180,0]) rotate([0,0,0])FootprintOutline_RC05 ();
/* C1 */
  translate([60.325,-24.130, 0]) rotate([0,180,0]) rotate([0,0,0])FootprintOutline_CK05 ();
/* X1 */
  translate([26.035,-24.130, 0]) rotate([0,180,0]) rotate([0,0,180])FootprintOutline_CK05 ();
/* C2 */
  translate([17.145,-24.130, 0]) rotate([0,180,0]) rotate([0,0,180])FootprintOutline_CK05 ();
/* C3 */
  translate([40.005,-24.130, 0]) rotate([0,180,0]) rotate([0,0,0])FootprintOutline_CK05 ();
/* C4 */
  translate([53.975,-14.605, 0]) rotate([0,180,0]) rotate([0,0,270])FootprintOutline_CK05 ();
/* U3 */
  translate([79.375,-24.130, 0]) rotate([0,180,0]) rotate([0,0,180])FootprintOutline_BESE039 ();
/* C15 */
  translate([79.375,-17.780, 0]) rotate([0,180,0]) rotate([0,0,180])FootprintOutline_CK05 ();
/* C17 */
  translate([85.725,-11.430, 0]) rotate([0,180,0]) rotate([0,0,0])FootprintOutline_ELCO200 ();
/* J1 */
  translate([8.255,-19.050, 0]) rotate([0,180,0]) rotate([0,0,90])FootprintOutline_10x2HDR_100 ();
/* H1 */
  translate([72.390,0.000, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_MOUNTING_HOLE ();
/* H2 */
  translate([0.000,0.000, 0]) rotate([0,0,0])translate([0,0,1.6]) FootprintOutline_MOUNTING_HOLE ();
