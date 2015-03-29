# Fpc2Scad

**Creates 3D models for printed circuit boards developed with FreePCB, the open source CAD tool**  (http://www.freepcb.com).  
It is an easy and powerful tool to place components on the board estate and route it manually or automatically.

OpenScad is a unique 3D modeller/editor that uses a C-like language to create 3D models. (http://www.openscad.org/).

**fpc2scad** is a C# command line utility that creates 3D models of PCB's designed with freepcb. The tool can be used both on windows and on linux, using the mono virtual machine.

**fpc2scad** reads the FreePCB file and creates a first approximation 3D open scad file that contains the full board with holes where the components are simple 3D extrusions of the outlines found inside the PCB file.

Then the components can be modified manually to create a 3D model closer to the real circuit.

## Motor example of FreePCB
The FreePCB documentation shows a printer circuit board named `motor.fpc`

![motor.fpc board](https://github.com/fjovine/Fpc2Scad/blob/master/doc/MotorController.png)

Running `Fpc2Scad motor.pfg` will create a plain vanilla 3D model having the holes drilled on the board and components created extruding the outline found inside the file.

![phase1](https://github.com/fjovine/Fpc2Scad/blob/master/doc/phase1/motor.png)

### Add features
It is possible to generate exernal skeleton OpenScad files for all the components on the board with the `-g` option on the command line:

* create the `gen` folder
* run `Fpc2Scad -ggen motor.pfg`
* 
This will store files for each component found in the `gen` folder:
![phase2](https://github.com/fjovine/Fpc2Scad/blob/master/doc/phase2/screen2.png)

Each file can be edited to create a realistic view of each component.

In order to do so, create a folder where a repository for components to be rendered will be stored and use the `-d` option on the command line, e.g. `Fpc2Scad -dlib motor.pfg` 

Then edit manually each file to create a realistic model: this is how the board looks like with realistic headers
![phase3](https://github.com/fjovine/Fpc2Scad/blob/master/doc/phase3/motor.png)

And this is after all the components have been defined.

![phase4](https://github.com/fjovine/Fpc2Scad/blob/master/doc/phase4/motor.png)

### More examples
![phase5](https://github.com/fjovine/Fpc2Scad/blob/master/doc/phase5/CS024.png)

![phase6](https://github.com/fjovine/Fpc2Scad/blob/master/doc/phase6/CS024_top.png)
![phase6](https://github.com/fjovine/Fpc2Scad/blob/master/doc/phase6/CS024_bottom.png)


## Synopsis

    Fpc2Scad [options] filename
    options
    -g[{folder}] : generate footprints, if folder is present, 
                   it stores them in the folder otherwise in the current folder.
                   No scad generation.
    -d{folder} : folder where the reference footprints are stored.`  
