#!/bin/bash

PX4_ROOT=/home/anton/PX4-Autopilot

#Model can be shell, iris, none

$PX4_ROOT/Tools/sitl_run.sh $PX4_ROOT/build/px4_sitl_ureboot/bin/px4 posix-configs/SITL/init/ekf2 none iris iris-nodll $PX4_ROOT $PX4_ROOT/build/posix_sitl_ureboot
