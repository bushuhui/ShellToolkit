Program_Name=Map2D
Map2D_Path=/data/zhaoyong/Linux/Program/Apps/uav_image/Kinect_PTAM
Here_Path=/data/zhaoyong/Linux/config_shell/Data/Program_Shell_Support/Map2D/Shell_Support
Map2D_Shell_Support_Path=$Here_Path
alias Map2D="bash $Here_Path/$Program_Name.sh"

	if [ -f "$Here_Path/Name_Complete.sh" ]; then
	. $Here_Path/Name_Complete.sh
	fi
