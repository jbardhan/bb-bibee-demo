1. Welcome, if you have any questions please email me at
jbardhan@alum.mit.edu.  An open source fast multipole based method
will be released soon; please let me know if you are interested in
trying it.

2. geometries are found in geometry/.  example problems (for now) are
geometry/sphere/
geometry/tripeptide

Warning: the big simulations (more than a thousand boundary elements)
will be SLOW (the method as implemented requires O(n^2) time).

4. How to create your own geometries
a.) you will need to download msms (Michel Sanner's program for generating
b.) you will need a pqr file (download pdb2pqr from Nathan Baker's group)
c.) make a file consisting of only the x, y, z, and R (radii) for your
molecule.
d.) run msms to generate the .face and .vert files
e.) run BIBEE!

(I'm implementing a PERL script to do the mesh generation
automatically.  should be done soon!  if you have any problems please
let me know)

