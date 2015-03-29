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

//FootprintOutline_CHIP_D();
