#!/bin/sh

# Fill in these environment variables.
# I have tested this code with CUDA 4.0, 4.1, and 4.2. 
# Only use Fermi-generation cards. Older cards won't work.

# If you're not sure what these paths should be, 
# you can use the find command to try to locate them.
# For example, NUMPY_INCLUDE_PATH contains the file
# arrayobject.h. So you can search for it like this:
# 
# find /usr -name arrayobject.h
# 
# (it'll almost certainly be under /usr)

# CUDA toolkit installation directory.
export CUDA_INSTALL_PATH=/usr/local/pkg/cuda/4.0/cuda

# CUDA SDK installation directory.
export CUDA_SDK_PATH=/home/zaremba/cuda-4.0-sdk

# Python include directory. This should contain the file Python.h, among others.
export PYTHON_INCLUDE_PATH=/usr/local/pkg/python/2.7/include/python2.7

# Numpy include directory. This should contain the file arrayobject.h, among others.
export NUMPY_INCLUDE_PATH=/usr/lib64/python2.6/site-packages/numpy/core/include/numpy
#/usr/local/pkg/python/2.7/lib/python2.7/site-packages/numpy/core/include/numpy

# ATLAS library directory. This should contain the file libcblas.so, among others.
export ATLAS_LIB_PATH=/usr/lib64/atlas

make $*

