# fpc2scad

Creates 3D models for printed circuit boards developed with FreePCB, the open source CAD tool (http://www.freepcb.com).  
It is an easy and powerful tool to place components on the board estate and route it manually or automatically.

OpenScad is a unique 3D modeller/editor that uses a C-like language to create 3D models. (http://www.openscad.org/).

**fpc2scad** is a C# command line utility that creates 3D models of PCB's designed with freepcb. The tool can be used both on windows and on linux, 
using the mono virtual machine.

**fpc2scad** reads the FreePCB file and creates a first approximation 3D open scad file that contains the full board with holes but the components 
are simple 3D extrusions of the outlines found inside the PCB file.

The components can be modified manually, thus creating a 3D model closer to the real circuit.

## Motor example of FreePCB
The FreePCB documentation shows a printer circuit board named `motor.fpc`

![motor.fpc board]{https://github.com/fjovine/Fpc2Scad/blob/master/doc/MotorController.png}

