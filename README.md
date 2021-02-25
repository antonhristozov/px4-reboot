# Micro Reboot Modifications for PX4 Autopilot Software

## Version
```
These instructions are prepared for version v1.11.3 of PX4 and may need
to be modified for different versions
```

## How to build and Run

```
-Clone the microreboot kernel modules:
    (https://bitbucket.org/seicps/yolo-linux-microreboot)
-Build the drivers on the Linux kernel you have
-Set the UREBOOT_HOME environment variable to the path to `yolo-linux-microreboot`
-Load the drivers in the order specified in their folder:
    $UREBOOT_HOME/loadmods.sh
-Build PX4 with micro reboot code:
    make px4_sitl_ureboot
-Run PX4 from a terminal window :
    sudo Tools/sitl_nodll_run.sh
-Run jmavsim in another terminal window:
    Tools/jmavsim_run.sh
-From PX4's command line use checkpoint module:
    checkpoint save
    ...
    checkpoint restore
```

## Modified and new files
```
platforms/posix/CMakeLists.txt
platforms/posix/src/px4/common/CMakeLists.txt
platforms/posix/src/px4/common/drv_hrt.cpp
Tools/sitl_nodll_run.sh
boards/px4/sitl/ureboot.cmake
src/examples/checkpoint/checkpoint.cpp
src/examples/checkpoint/checkpoint_keep.h
src/examples/checkpoint/CMakeLists.txt
```

