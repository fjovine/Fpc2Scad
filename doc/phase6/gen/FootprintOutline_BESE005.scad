module FootprintOutline_BESE005 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
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
  translate([0.000,0.000,0]) pin(); 
  translate([6.502,0.000,0]) pin(); 
}

//FootprintOutline_BESE005();
