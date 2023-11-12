pqrFile = '../geometry/sphere/sphere.pqr';
meshFile = '../geometry/sphere/sphere_r5';

epsIn  = 4;
epsOut = 80;

[geometry, dG_cfa, dG_p, dG_lb] = doBIBEEapprox(meshFile, pqrFile, ...
																epsIn, epsOut);

geometry.A = calcBEMSystemMatrix(geometry.meshData, epsIn, epsOut);

dG_bem = .5 * 332.112 * geometry.pqrData.q' * geometry.C * ...
			(geometry.A \ (geometry.B*geometry.pqrData.q));

