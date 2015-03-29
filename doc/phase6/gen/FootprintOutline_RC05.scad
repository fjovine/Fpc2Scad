module FootprintOutline_RC05 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [3.048000,0.838200],[7.112000,0.838200],
      [7.112000,-0.838200],
      [3.048000,-0.838200],
      [3.048000,0.838200],
    ]);
  }
  translate([0.000,0.000,0]) pin(); 
  translate([10.160,0.000,0]) pin(); 
}

//FootprintOutline_RC05();
