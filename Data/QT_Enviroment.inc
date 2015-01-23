
APPS_TOP=/data/zhaoyong/Linux/Program/Apps
LIBS_TOP=/data/zhaoyong/Linux/Program/Libs
#################################################################################
#Mrpt settings
MRPT_TOP = $$LIBS_TOP/mrpt-1.1.0
INCLUDEPATH += -I $$MRPT_TOP \
               apps/2d-slam-demo \
               apps/wx-common \
               apps/3DSceneViewer \
               apps/camera-calib \
               apps/common \
               apps/GridmapNavSimul \
               apps/holonomic-navigator-demo \
               apps/ReactiveNavigationDemo \
               apps/kinect-stereo-calib \
               apps/kinect-stereo-calib/imgs \
               apps/mrpt-performance \
               apps/navlog-viewer \
               apps/prrt-navigator-demo \
               apps/rawlog-tools \
               apps/RawLogViewer \
               apps/ReactiveNav3D-Demo \
               apps/ro-localization \
               apps/robotic-arm-kinematics \
               apps/srba-slam \
               $$MRPT_TOP/libs/base/include/ \
               $$MRPT_TOP/libs/hwdrivers/include \
               $$MRPT_TOP/libs/base/include \
               $$MRPT_TOP/libs/opengl/include \
               $$MRPT_TOP/libs/vision/include \
               $$MRPT_TOP/libs/maps/include \
               $$MRPT_TOP/libs/gui/include \
               $$MRPT_TOP/libs/scanmatching/include \
               $$MRPT_TOP/libs/obs/include/ \
               $$MRPT_TOP/otherlibs
#################################################################################

################################################################################
# OpenCV settings
################################################################################
OPENCV_TOP  = /opt/opencv

LIBS += -L$$OPENCV_TOP/lib \
        -lopencv_calib3d -lopencv_contrib -lopencv_core \
        -lopencv_features2d -lopencv_flann -lopencv_gpu \
        -lopencv_highgui -lopencv_imgproc -lopencv_legacy \
        -lopencv_ml -lopencv_nonfree -lopencv_objdetect \
        -lopencv_photo -lopencv_stitching -lopencv_ts \
        -lopencv_video -lopencv_videostab

INCLUDEPATH +=  $$OPENCV_TOP/include $$OPENCV_TOP/include/opencv ../3rdparty/include/

################################################################################
# PCL settings
################################################################################
INCLUDEPATH += /usr/include/pcl-1.7
################################################################################


################################################################################
# LIB_ZY settings
################################################################################
INCLUDEPATH += $$LIBS_TOP/Lib_ZY/src \
               /data/zhaoyong/Linux/Program/Apps/uav_image/SequenceSFM
################################################################################


################################################################################
# Eigen settings
################################################################################
INCLUDEPATH += /usr/include/eigen3 
################################################################################


################################################################################
# Openni settings
################################################################################
INCLUDEPATH+=/usr/include/ni
################################################################################

################################################################################
# RTK settings
################################################################################
INCLUDEPATH += $$LIBS_TOP/rtk++/include
################################################################################


################################################################################
# PBA settings
################################################################################
INCLUDEPATH += $$LIBS_TOP/pba/pba
################################################################################






