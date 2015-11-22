print("importing .tiff files");
run("Image Sequence...", "open=/Users/se/workspace/tiff2stl/tiffs scale=50 sort");
setOption("BlackBackground", false);
print("converting .tiff files to binary images");
run("Make Binary", "method=MaxEntropy background=Dark calculate black");
//setTool("hand");
run("3D Viewer");
call("ij3d.ImageJ3DViewer.setCoordinateSystem", "false");
print("converting .tiff to 3D rendering");
call("ij3d.ImageJ3DViewer.add", "tiffs", "White", "tiffs", "50", "true", "true", "true", "2", "2");
call("ij3d.ImageJ3DViewer.select", "tiffs");
print("exporting 3D rendering to .stl");
call("ij3d.ImageJ3DViewer.exportContent", "STL ASCII", "/Users/se/workspace/tiff2stl/final.stl");
print("exiting");
exit;
