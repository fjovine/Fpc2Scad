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
