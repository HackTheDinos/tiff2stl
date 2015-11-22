run("Image Sequence...", "open=/Users/se/workspace/tiff2stl/tiffs");
selectWindow("tiffs");
setOption("BlackBackground", false);
run("Make Binary", "method=MaxEntropy background=Default calculate black");
run("3D Viewer");
call("ij3d.ImageJ3DViewer.setCoordinateSystem", "false");
call("ij3d.ImageJ3DViewer.add", "tiffs", "None", "tiffs", "0", "true", "true", "true", "2", "0");
call("ij3d.ImageJ3DViewer.select", "tiffs");
call("ij3d.ImageJ3DViewer.exportContent", "STL ASCII", "/Users/se/workspace/tiff2stl/tiffs/final.stl");
