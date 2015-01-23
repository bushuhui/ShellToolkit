#System Config Things

APPS_TOP=/data/zhaoyong/Linux/Program/Apps
LIBS_TOP=/data/zhaoyong/Linux/Program/Libs

#################################################################
#Opencv
# run EXPORT PKG_CONFIG_PATH=/opt/OpenCV-2.4/lib/pkgconfig
OPENCV_CFLAGS=$(shell pkg-config --cflags opencv)
OPENCV_LIBS=$(shell pkg-config --libs opencv)
OPENCV_LDFLAGS=$(OPENCV_LIBS)
#################################################################

################################################################################
# OpenGL settings
################################################################################
OPENGL_CFLAGS   = 
OPENGL_LDFLAGS  = -lGL -lGLU -lglut


################################################################################
# PCL 1.7
################################################################################
PCL17_CFLAGS = -I/usr/include/pcl-1.7
PCL17_LIBS = pcl_common pcl_features pcl_filters pcl_io_ply \
            pcl_io pcl_kdtree pcl_keypoints pcl_octree pcl_registration \
            pcl_sample_consensus pcl_search pcl_segmentation pcl_surface \
            pcl_tracking pcl_visualization
PCL17_LDFLAGS = $(addprefix -l,$(PCL17_LIBS))
################################################################################
# PCL 1.6
################################################################################
PCL_CFLAGS = -I/usr/include
PCL_LIBS = pcl_common pcl_features pcl_filters pcl_io_ply \
            pcl_io pcl_kdtree pcl_keypoints pcl_octree pcl_registration \
            pcl_sample_consensus pcl_search pcl_segmentation pcl_surface \
            pcl_tracking pcl_visualization
PCL_LDFLAGS = /usr/lib/libpcl.so
################################################################################
# Boost
################################################################################
BOOST_CFLAGS   = 
BOOST_LDFLAGS  =   -lboost_serialization -lboost_system -lboost_thread -lboost_program_options

################################################################################
# Eigen3
################################################################################
EIGEN3_CFLAGS = -I/usr/include/eigen3 
EIGEN3_LIBS   = 


################################################################################
# Qt settings
################################################################################
QT_CFLAGS = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED \
            -I/usr/share/qt4/mkspecs/linux-g++ \
            -I/usr/include/qt4/QtCore \
            -I/usr/include/qt4/QtGui \
            -I/usr/include/qt4/QtXml \
            -I/usr/include/qt4/QtOpenGL \
            -I/usr/include/qt4 -I.moc
QT_LIBS   = -lQtGui -lQtCore -lQtXml -lQtOpenGL -lQGLViewer  $(OPENGL_LDFLAGS) -lpthread 

################################################################################
# ffmpeg
# install dir: /opt/ffmpeg-1.0 or use system (/usr)
################################################################################
#FFMPEG_DIR    = /opt/ffmpeg-1.0
FFMPEG_DIR   = /usr
FFMPEG_CFLAGS = -I$(FFMPEG_DIR)/include
FFMPEG_LIBS   = -L$(FFMPEG_DIR)/lib -lavformat -lavcodec -lswscale -lavutil 
FFMPEG_LDFLAGS=$(FFMPEG_LIBS)

################################################################################
# RTK++ settings
################################################################################
#RTK_DIR    = /home/bushuhui/uav/rtk++
RTK_DIR    = $(LIBS_TOP)/rtk++
RTK_CFLAGS = -I$(RTK_DIR)/include
RTK_LIBS   = -L$(RTK_DIR)/lib -lrtk_osa -lrtk_utils
RTK_LDFLAGS=$(RTK_LIBS)

################################################################################
# PTAM settings
################################################################################
PTAM_CFLAGS=
PTAM_LDFLAGS=-lGVars3 -lcvd


################################################################################
# OpenNI
################################################################################
#OpenNI_TOP      = ./libs/rtk++
OpenNI_CFLAGS   = -I/usr/include/ni
OpenNI_LDFLAGS  = -lOpenNI -lnimCodecs -lnimRecorder -lnimMockNodes -lOpenNI.jni


################################################################################
# MRPT settings
################################################################################
MRPT_TOP=$(LIBS_TOP)/mrpt-1.1.0

MRPT_CFLAGS=-I$(MRPT_TOP)/. -I$(MRPT_TOP)/build/include/mrpt-config/unix -I$(MRPT_TOP)/libs/gui/include -I$(MRPT_TOP)/libs/hwdrivers/include -I$(MRPT_TOP)/libs/maps/include -I$(MRPT_TOP)/libs/opengl/include -I$(MRPT_TOP)/libs/base/include -I$(MRPT_TOP)/libs/obs/include -I$(MRPT_TOP)/otherlibs/eigen3 -I$(MRPT_TOP)/otherlibs/eigen3/unsupported -I/opt/opencv/include/opencv -I/opt/opencv/include -I/usr/include/ffmpeg -I/usr/include/libavcodec -I/usr/include/libavformat -I/usr/include/libswscale -isystem /usr/lib/i386-linux-gnu/wx/include/gtk2-unicode-release-2.8 -isystem /usr/include/wx-2.8 -I/usr/include/suitesparse -I$(MRPT_TOP)/. -I$(MRPT_TOP)/build/include/mrpt-config/unix -I$(MRPT_TOP)/libs/gui/include -I$(MRPT_TOP)/libs/hwdrivers/include -I$(MRPT_TOP)/libs/maps/include -I$(MRPT_TOP)/libs/opengl/include -I$(MRPT_TOP)/libs/base/include -I$(MRPT_TOP)/libs/obs/include

MRPT_LDFLAG=
MRPT_LDFLAGS=-pthread -I /usr/lib/i386-linux-gnu/wx/include/gtk2-unicode-release-2.8 -isystem /usr/lib/i386-linux-gnu/wx/include/gtk2-unicode-release-2.8 -I /usr/include/wx-2.8 -isystem /usr/include/wx-2.8  -Wall -Wno-long-long -Wno-write-strings -Wno-variadic-macros -pedantic -pthread -std=c++11  -O3 -mtune=native  -msse3 -mssse3  -O3 -DNDEBUG  -O3 -mtune=native  -msse3 -mssse3 -lGL -lGLU -lglut $(OPENCV_LIBS_NO) \
-L/usr/lib/i386-linux-gnu -pthread -lwx_baseu-2.8 -lwx_gtk2u_core-2.8 -lwx_gtk2u_gl-2.8 -lwx_gtk2u_adv-2.8 -lwx_gtk2u_aui-2.8 -lwx_gtk2u_html-2.8 -ldc1394 -lz -ljpeg -lrt -lusb-1.0 -lcholmod -lamd -lcsparse -lavcodec -lavformat -lavutil -lswscale -ldl \
-L$(MRPT_TOP)/build/lib -rdynamic -lmrpt-gui -lmrpt-hwdrivers -lmrpt-maps -lmrpt-opengl -lmrpt-base -lmrpt-obs -lmrpt-gui  -Wl,-rpath,$(MRPT_TOP)/build/lib:

################################################################################
# suitesparse settings
################################################################################
SUITESPARSE_TOP     = /usr
SUITESPARSE_CFLAGS  = -I$(SUITESPARSE_TOP)/include/suitesparse
SUITESPARSE_LDFLAGS = -L/usr/lib/x86_64-linux-gnu \
			-lcxsparse -lcsparse \
			-lcholmod -lamd -lcolamd -lcamd -lccolamd 

################################################################################
# g2o settings
################################################################################
G2O_TOP     = $(LIBS_TOP)/g2o/g2o-master
G2O_CFLAGS  = $(SUITESPARSE_CFLAGS)
G2O_LDFLAGS = -L/usr/local/lib -lg2o_core -lg2o_stuff -lg2o_solver_csparse  -lg2o_parser \
	      -lg2o_cli -lg2o_incremental -lg2o_parser  -lg2o_solver_pcg  -lg2o_types_sim3 \
	      -lg2o_interactive -lg2o_solver_cholmod -lg2o_stuff -lg2o_types_slam2d \
	      -lg2o_interface -lg2o_solver_csparse -lg2o_types_icp -lg2o_types_slam3d \
  	      -lg2o_solver_dense -lg2o_types_sba -lg2o_csparse_extension $(SUITESPARSE_LDFLAGS)

###############################################################################
# PBA
################################################################################
PBA_TOP     = $(LIBS_TOP)/pba
PBA_CFLAGS  = -I$(PBA_TOP)/pba
PBA_LDFLAGS = -L$(PBA_TOP)/lib -lpba

###############################################################################
# SSBA
################################################################################
SSBA_TOP     = $(APPS_TOP)/uav_image/SequenceSFM/libs/SSBA-3.0
SSBA_CFLAGS  = -I$(SSBA_TOP)
SSBA_LDFLAGS = -L$(SSBA_TOP) -lv3d_math -lv3d_geometry

################################################################################
# V3D V3D
################################################################################
V3D_TOP     = ./libs/SSBA-3.0
V3D_CFLAGS  = -I$(V3D_TOP)
V3D_LDFLAGS = -L$(V3D_TOP)   -lv3d_math -lv3d_geometry #
################################################################################
# LIB_ZY settings
################################################################################
LIB_ZY_TOP=$(LIBS_TOP)/Lib_ZY
LIB_ZY_CFLAGS=-I$(LIB_ZY_TOP)/src $(QT_CFLAGS) $(G2O_CFLAGS)
LIB_ZY_LDFLAGS=$(LIB_ZY_TOP)/libs/libzy_base.so $(LIB_ZY_TOP)/libs/libHardwareDraw.so $(LIB_ZY_TOP)/libs/libinternet.so $(LIB_ZY_TOP)/libs/libbundle_adjust.so \
$(LIB_ZY_TOP)/libs/libcv.so $(LIB_ZY_TOP)/libs/libhardware.so \
$(QT_LIBS) $(G2O_LDFLAGS)


################################################################################
# SFM settings
################################################################################
SFM_TOP=$(APPS_TOP)/uav_image/SequenceSFM
SFM_CFLAGS=-I$(SFM_TOP)
SFM_LDFLAGS=$(SFM_TOP)/libSFM.so  $(PBA_LDFLAGS) -L$(SFM_TOP)/libs/SfMToyLib -lSfMToy

################################################################################
# Compile setup
################################################################################
SIMP_CFLAGS =-pipe -I. -msse4 
# -g -rdynamic
SIMP_LDFLAGS=

################################################################################
# All of above
################################################################################
ALL_CFLAGS =$(SIMP_CFLAGS)  $(QT_CFLAGS) $(OPENCV_CFLAGS)  $(EIGEN3_CFLAGS) $(BOOST_CFLAGS) $(OpenNI_CFLAGS) $(PCL17_CFLAGS)   $(FFMPEG_CFLAGS)  $(RTK_CFLAGS)  $(LIB_ZY_CFLAGS)
ALL_LDFLAGS=$(SIMP_LDFLAGS) $(QT_LIBS)   $(OPENCV_LDFLAGS) $(PTAM_LDFLAGS) $(BOOST_LDFLAGS) $(OpenNI_LDFLAGS) $(PCL17_LDFLAGS) $(FFMPEG_LDFLAGS) $(RTK_LDFLAGS) $(LIB_ZY_LDFLAGS)
            



