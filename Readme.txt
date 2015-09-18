P E R M I S S I O N

You have my permission to edit any of the included files, use and release them for free Rigs of Rods projects provided you credit me, LJFHutch.


U S E A G E

There are two methods of placing these objects:
1. Object: Use the RoR toolkit to place objects and save the .terrn.
2. Paged Geometry: For paged geometry you must use the tree section of the .terrn and a texture mask of the terrain, an example of a placed tree can be seen below (note that the files are the PagedGeometry versions of the trees - meshes with lods will not work):

	//trees yawFrom, yawTo, scaleFrom, scaleTo, highDensity, distance1, distance2, meshName colormap densitymap

	trees 0, 360, 0.87, 1.39, 2.2, 50, 200, LJTreeBirch01PagedGeo.mesh none MuddyRussianTracks-trees2.dds
	trees 0, 360, 0.87, 1.39, 2.2, 50, 200, LJTreeBirch02PagedGeo.mesh none MuddyRussianTracks-trees2.dds


I hope these help you out, good luck!



History:

Version 1.0:
Version 1.1:
	Fixed: Missing texture (.material issue)
	Fixed: Strange occlusion bug