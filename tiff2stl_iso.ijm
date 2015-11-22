print(getArgument())
print("importing .tiff files");
var name = getArgument();
var imgSequence = "open=./" + name +"/ scale=25 sort";
print(imgSequence);
run("Image Sequence...", imgSequence);
setOption("BlackBackground", false);
print("converting .tiff files to binary images");
/* run("Make Binary", "method=MaxEntropy background=Dark calculate black"); */
run("Make Binary", "method=IsoData background=Dark calculate black");
//setTool("hand");
run("3D Viewer");
call("ij3d.ImageJ3DViewer.setCoordinateSystem", "false");
print("converting .tiff to 3D rendering");
call("ij3d.ImageJ3DViewer.add", name, "White", name, "50", "true", "true", "true", "2", "2");
call("ij3d.ImageJ3DViewer.select", name);
print("exporting 3D rendering to .stl");
var filename = "./" + name + ".stl";
call("ij3d.ImageJ3DViewer.exportContent", "STL ASCII", filename);
print("exiting");
run("Quit");
