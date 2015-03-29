module FootprintOutline_CK05 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [-0.965200,1.270000],[6.045200,1.270000],
      [6.045200,-1.270000],
      [-0.965200,-1.270000],
      [-0.965200,1.270000],
    ]);
  }
  translate([0.000,0.000,0]) pin(); 
  translate([5.080,0.000,0]) pin(); 
}

//FootprintOutline_CK05();
