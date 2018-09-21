 GIfTI - a MATLAB GIfTI Library (v1.8)
 =====================================
 
 https://www.artefact.tk/software/matlab/gifti/

 This MATLAB class allows to handle GIfTI Geometry file format from the 
 Neuroimaging Informatics Technology Initiative.
   * GIfTI: http://www.nitrc.org/projects/gifti/
   * NIfTI: http://nifti.nimh.nih.gov/

 It relies on external libraries:
   * Base64, by Peter J. Acklam:
     http://home.online.no/~pjacklam/
   * miniz, by Rich Geldreich:
     https://github.com/richgel999/miniz
   * dzip, by Michael Kleder:
     https://www.mathworks.com/matlabcentral/fileexchange/8899
   * XMLTree, by Guillaume Flandin:
     https://www.artefact.tk/software/matlab/xml/
   * mVTK, by Guillaume Flandin:
     https://www.artefact.tk/software/matlab/mvtk/
   * JSONio, by Guillaume Flandin:
     https://www.artefact.tk/software/matlab/jsonio/

 Note that these tools are already included in the GIfTI library provided
 here, so you don't need to install them separately.

 This library is also part of SPM:
   * SPM: https://www.fil.ion.ucl.ac.uk/spm/

 INSTALLATION
 ------------
 
 MATLAB 7.1 (R14SP3) or above is required to use most of the features of
 this toolbox.
 
 This library takes advantage of MATLAB Object-Oriented facilities and all
 the code is embedded in a `@gifti` class. To install it, all you need is to 
 make sure that the directory containing `@gifti` is in MATLAB path:
 
```matlab
  addpath /home/login/Documents/MATLAB/gifti
```
 
 The handling of gzipped data requires a C-MEX file to be compiled, see
 `@gifti/private/zstream.c`. A Java alternative will be used otherwise,
 in which case MATLAB should not be started with the `'-nojvm'` option
  
 TUTORIAL
 --------
 
 In the following, we use the files contained in `BV_GIFTI.tar.gz`
 (BrainVISA examples), available from the NITRC website: 
   http://www.nitrc.org/frs/?group_id=75&release_id=123
   
```matlab
   % Read the GIfTI surface file
   g = gifti('sujet01_Lwhite.surf.gii')
    
   % Read the GIfTI shape file
   gg = gifti('sujet01_Lwhite.shape.gii')
   
   % Display mesh
   figure; plot(g);
   % Display mesh with curvature
   figure; plot(g,gg);
```
   
 In a similar way, a gifti object can be created from scratch and save to a file:
   
 ```matlab
   load mri
   D = squeeze(D);
   Ds = smooth3(D);
   g = gifti(isosurface(Ds,5))
   
   h = plot(g);
   daspect([1,1,.4]); view(45,30); axis tight
   lightangle(45,30);
   set(h,'SpecularColorReflectance',0,'SpecularExponent',50)
    
   save(g,'mri.surf.gii','Base64Binary');
```
 
 -------------------------------------------------------------------------------
 MATLAB is a Registered Trademark of The Mathworks, Inc.
 
 Copyright (C) 2008-2018 Guillaume Flandin <Guillaume@artefact.tk>
