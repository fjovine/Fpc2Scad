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

//FootprintOutline_CHIP_B();
