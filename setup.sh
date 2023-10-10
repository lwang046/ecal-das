#!/usr/bin/env bash

# path to ecal stuff
ecal=/nfs/dust/cms/group/cmsdas2023/DPG-ECAL/ecal-env/

# Python from CVMFS
lcg_version=LCG_103
arch=x86_64-centos7-gcc11-opt
source /cvmfs/sft.cern.ch/lcg/views/setupViews.sh $lcg_version $arch

# venv
source $ecal/bin/activate

# add kernel and configure it for NAF
kernel_name="ecal-das"
ipython kernel install --user --name=$kernel_name
cp $ecal/kernel-ecal.json ~/.local/share/jupyter/kernels/${kernel_name}/kernel.json
