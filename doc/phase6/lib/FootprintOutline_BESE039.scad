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
