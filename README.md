# KiriMotoSlicer

KiriMotoSlicer is a CLI wrapper for **[Kiri:Moto](https://grid.space/kiri/)** web-based slicer, the code was based on the `src/kiri/cli.js` and further 
extended to operate standalone as much node-based code allows it (NodeJS vs BrowserJS has become utterly messy to deal with).

## Download

```
git clone https://github.com/Spiritdude/KiriMotoSlicer
```

## Installation

```
make requirements
sudo make install
```

## Usage
```
KiriMotoSlicer 0.0.5 USAGE: [<options>] [file] ...
   options:
      --help                        this usage help
      --help=<term>                 show settings matching <term>
      -h <term>                        "       "
      --version                     display version and exit
      --verbose                     increase verbosity
      -v or -vvv                       "       "
      --output=<fn>                 force output filename
      -o <fn>                          "       "
      --load=<conf>                 load configuration (lines of <k>=<v>, or experimental JSON as grid-apps/src/dev/*)
      -l <conf>                              "                "                      "
      --setTemperature=<s>          include set temperature extruder & bed in gcodePre (default: true)
      --bedOrigin=<x>,<y>           set origin of bed (use with --outputOriginCenter=true) (default: [0,0])

   slice configuration:
      --processName=<v>             set process name (default: "generic")
      --sliceHeight=<v>             set slice height (default: 0.25)
      --sliceShells=<v>             set slice shells (default: 3)
      --sliceShellOrder=<v>         set slice shell order ["in-out","out-in"] (default: "in-out")
      --sliceLayerStart=<v>         set slice layer start ["last","center","origin"] (default: "last")
      --sliceFillAngle=<v>          set slice fill angle (default: 45)
      --sliceFillOverlap=<v>        set slice fill overlap (default: 0.3)
      --sliceFillSparse=<v>         set slice fill sparse (default: 0.2)
      --sliceFillType=<v>           set slice fill type ["vase","hex","grid","gyroid","triangle","linear","bubbles"] (default: "gyroid")  
      --sliceAdaptive=<v>           set slice adaptive (default: false)
      --sliceMinHeight=<v>          set slice min height (default: 0)
      --sliceSupportDensity=<v>     set slice support density (default: 0.25)
      --sliceSupportOffset=<v>      set slice support offset (default: 0.4)
      --sliceSupportGap=<v>         set slice support gap (default: 1)
      --sliceSupportSize=<v>        set slice support size (default: 6)
      --sliceSupportArea=<v>        set slice support area (default: 1)
      --sliceSupportExtra=<v>       set slice support extra (default: 0)
      --sliceSupportAngle=<v>       set slice support angle (default: 50)
      --sliceSupportNozzle=<v>      set slice support nozzle (default: 0)
      --sliceSolidMinArea=<v>       set slice solid min area (default: 10)
      --sliceSolidLayers=<v>        set slice solid layers (default: 3)
      --sliceBottomLayers=<v>       set slice bottom layers (default: 3)
      --sliceTopLayers=<v>          set slice top layers (default: 3)
      --firstLayerRate=<v>          set first layer rate (default: 10)
      --firstLayerPrintMult=<v>     set first layer print mult (default: 1.15)
      --firstLayerYOffset=<v>       set first layer YOffset (default: 0)
      --firstLayerBrim=<v>          set first layer brim (default: 0)
      --firstLayerBeltLead=<v>      set first layer belt lead (default: 3)
      --sliceSkirtCount=<v>         set slice skirt count (default: 0)
      --sliceSkirtOffset=<v>        set slice skirt offset (default: 2)
      --sliceLineWidth=<v>          set slice line width (default: 0)
      --outputTemp=<v>              set output temp (default: 210)
      --outputBedTemp=<v>           set output bed temp (default: 60)
      --outputFeedrate=<v>          set output feedrate (default: 50)
      --outputFinishrate=<v>        set output finishrate (default: 50)
      --outputSeekrate=<v>          set output seekrate (default: 80)
      --outputShellMult=<v>         set output shell mult (default: 1.25)
      --outputFillMult=<v>          set output fill mult (default: 1.25)
      --outputSparseMult=<v>        set output sparse mult (default: 1.25)
      --outputRetractDist=<v>       set output retract dist (default: 4)
      --outputRetractSpeed=<v>      set output retract speed (default: 30)
      --outputRetractDwell=<v>      set output retract dwell (default: 30)
      --outputShortPoly=<v>         set output short poly (default: 100)
      --outputMinSpeed=<v>          set output min speed (default: 10)
      --outputCoastDist=<v>         set output coast dist (default: 0.1)
      --outputLayerRetract=<v>      set output layer retract (default: true)
      --detectThinWalls=<v>         set detect thin walls (default: true)
      --zHopDistance=<v>            set z hop distance (default: 0)
      --antiBacklash=<v>            set anti backlash (default: 0)
      --outputOriginCenter=<v>      set output origin center (default: false)
      --sliceFillRate=<v>           set slice fill rate (default: 0)
      --sliceSupportEnable=<v>      set slice support enable (default: false)
      --firstSliceHeight=<v>        set first slice height (default: 0.25)
      --firstLayerFillRate=<v>      set first layer fill rate (default: 35)
      --firstLayerLineMult=<v>      set first layer line mult (default: 1)
      --firstLayerNozzleTemp=<v>    set first layer nozzle temp (default: 0)
      --firstLayerBedTemp=<v>       set first layer bed temp (default: 0)
      --firstLayerBrimTrig=<v>      set first layer brim trig (default: 0)
      --outputRaft=<v>              set output raft (default: false)
      --outputRaftSpacing=<v>       set output raft spacing (default: 0.2)
      --outputRetractWipe=<v>       set output retract wipe (default: 0)
      --outputBrimCount=<v>         set output brim count (default: 2)
      --outputBrimOffset=<v>        set output brim offset (default: 2)
      --outputLoopLayers=<v>        set output loop layers (default: null)
      --outputInvertX=<v>           set output invert x (default: false)
      --outputInvertY=<v>           set output invert y (default: false)
      --arcTolerance=<v>            set arc tolerance (default: 0)
      --gcodePause=<v>              set gcode pause (default: "")
      --ranges=<v>                  set ranges (default: "")
      --firstLayerFanSpeed=<v>      set first layer fan speed (default: 0)
      --outputFanSpeed=<v>          set output fan speed (default: 255)

   device configuration:
      --noclone=<v>                 set noclone (default: false)
      --mode=<v>                    set mode ["FDM","SLA","CNC","Laser"] (default: "FDM")
      --internal=<v>                set internal (default: 0)
      --imageURL=<v>                set image URL (default: "")
      --imageScale=<v>              set image scale (default: 0.75)
      --imageAnchor=<v>             set image anchor (default: 0)
      --bedHeight=<v>               set bed height (default: 2.5)
      --bedWidth=<v>                set bed width (default: 220)
      --bedDepth=<v>                set bed depth (default: 220)
      --bedRound=<v>                set bed round (default: false)
      --bedBelt=<v>                 set bed belt (default: false)
      --maxHeight=<v>               set max height (default: 300)
      --originCenter=<v>            set origin center (default: false)
      --extrudeAbs=<v>              set extrude abs (default: true)
      --spindleMax=<v>              set spindle max (default: 0)
      --gcodeFan=<v>                set gcode fan (default: "M106 S{fan_speed}")
      --gcodeTrack=<v>              set gcode track (default: "")
      --gcodeLayer=<v>              set gcode layer (default: ";LAYER:{layer}")
      --gcodePre=<v>                set gcode pre (default: "M107                     ; turn off filament cooling fan\nG90                      ; set absolute positioning mode\nM82                      ; set absolute positioning for extruder\nM104 S{temp} T{tool}     ; set extruder temperature\nM140 S{bed_temp} T{tool} ; set bed temperature\nG28                      ; home axes\nG92 X0 Y0 Z0 E0          ; reset all axes positions\nG1 X0 Y0 Z0.25 F180      ; move XY to 0,0 and Z 0.25mm over bed\nG92 E0                   ; zero the extruded\nM190 S{bed_temp} T{tool} ; wait for bed to reach target temp\nM109 S{temp} T{tool}     ; wait for extruder to reach target temp\nG92 E0                   ; zero the extruded\nG1 F225                  ; set feed speed")
      --gcodePost=<v>               set gcode post (default: "M107                     ; turn off filament cooling fan\nM104 S0 T{tool}          ; turn off right extruder\nM140 S0 T{tool}          ; turn off bed\nG1 X0 Y300 F1200         ; end move\nM84                      ; disable stepper motors")   
      --gcodeProc=<v>               set gcode proc (default: "")
      --gcodePause=<v>              set gcode pause (default: "")
      --gcodeDwell=<v>              set gcode dwell (default: "")
      --gcodeSpindle=<v>            set gcode spindle (default: "")
      --gcodeChange=<v>             set gcode change (default: "")
      --gcodeFExt=<v>               set gcode FExt (default: "gcode")
      --gcodeSpace=<v>              set gcode space (default: true)
      --gcodeStrip=<v>              set gcode strip (default: false)
      --gcodeLaserOn=<v>            set gcode laser on (default: "")
      --gcodeLaserOff=<v>           set gcode laser off (default: "")
      --extruders.[0..<n-1>].{extFilament,extNozzle,extSelect,extDeselect,extOffsetX,extOffsetY}=<v> set extruders (default: [{"extFilament":1.75,"extNozzle":0.4,"extSelect":["T0"],"extDeselect":[],"extOffsetX":0,"extOffsetY":0}])
      --new=<v>                     set new (default: false)
      --deviceName=<v>              set device name (default: "3D Printer")

   examples:
      kirimoto-slicer cube.stl
      kirimoto-slicer cube.stl -o test.gcode
      kirimoto-slicer -v cube.stl --sliceHeight=0.1
      kirimoto-slicer cube.stl --extruders.0.extNozzle=0.5 --sliceHeight=0.4
      kirimoto-slicer -h slice
      kirimoto-slicer -h .

```

More information & details see [3D Printing: Kiri:Moto CLI Slicer](https://xyzdims.com/2021/08/27/3d-printing-kirimoto-cli-slicer/) how to use it.

## Todo
- `--sliceFillType=vase` and `bubbles` are listed, but seem not supported

