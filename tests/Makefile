all::	cube.gcode hollowCube.gcode

cube.gcode::
	../KiriMotoSlicer --sliceFillType=vase cube.stl
	gcode2png --complete=50% --output=cube-vase-50%.png cube.gcode
	../KiriMotoSlicer --sliceFillType=hex cube.stl
	gcode2png --complete=50% --output=cube-hex-50%.png cube.gcode
	../KiriMotoSlicer --sliceFillType=grid cube.stl
	gcode2png --complete=50% --output=cube-grid-50%.png cube.gcode
	../KiriMotoSlicer --sliceFillType=gyroid cube.stl
	gcode2png --complete=50% --output=cube-gyroid-50%.png cube.gcode
	../KiriMotoSlicer --sliceFillType=triangle cube.stl
	gcode2png --complete=50% --output=cube-triangle-50%.png cube.gcode
	../KiriMotoSlicer --sliceFillType=linear cube.stl
	gcode2png --complete=50% --output=cube-linear-50%.png cube.gcode
	../KiriMotoSlicer --sliceFillType=bubbles cube.stl
	gcode2png --complete=50% --output=cube-bubbles-50%.png cube.gcode

hollowCube.gcode::
	../KiriMotoSlicer xyzHollowCalibrationCubeV2.stl --sliceFillSparse=0 -o hollowCube.gcode
	gcode2png --complete=20% --output=hollowCubeKiriMoto-20%.png hollowCube.gcode
	gcode2png --complete=50% --output=hollowCubeKiriMoto-50%.png hollowCube.gcode
	gcode2png --output=hollowCubeKiriMoto.png hollowCube.gcode


