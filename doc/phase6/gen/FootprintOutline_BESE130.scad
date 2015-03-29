module FootprintOutline_BESE130 () {
    module pin() { translate([0,0,-5]) cylinder(r=0.2, h=5, $fn=10); }
  color("gray")
  linear_extrude(height=5) {
    polygon([
      [-2.870200,-0.177800],[-2.362200,-1.041400],
      [-1.041400,-2.362200],
      [0.609600,-3.200400],
      [2.489200,-3.505200],
      [4.343400,-3.200400],
      [6.019800,-2.362200],
      [7.340600,-1.041400],
      [8.178800,0.609600],
      [8.483600,2.489200],
      [8.178800,4.343400],
      [7.340600,6.019800],
      [6.019800,7.340600],
      [4.343400,8.178800],
      [2.489200,8.483600],
      [0.609600,8.178800],
      [-1.041400,7.340600],
      [-2.362200,6.019800],
      [-2.870200,5.156200],
      [-2.870200,-0.177800],
    ]);
  }
  translate([0.000,0.000,0]) pin(); 
  translate([4.978,0.000,0]) pin(); 
  translate([0.000,4.978,0]) pin(); 
  translate([4.978,4.978,0]) pin(); 
}

//FootprintOutline_BESE130();
