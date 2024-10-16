#!/bin/bash

docker run --rm -it \
   -v ~/Desktop/Yoo_Lab/post_fMRI/post_prep_RBD:/fmriprep:ro \
   -v /tmp/wkdir:/work:rw \
   -v ~/Desktop/post_fMRI/post_XCP-D_RBD:/out:rw \
   -v ~/Downloads/license.txt:/freesurfer:ro \
   pennlinc/xcp_d:latest \
   /fmriprep /out participant \
   --participant-label 13 16 \
   --despike \
   --smoothing 6 \
   --fs-license-file /freesurfer
   