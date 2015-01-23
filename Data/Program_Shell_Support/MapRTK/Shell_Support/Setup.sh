Program_Name=MapRTK
export MapRTK_Path=/data/zhaoyong/Linux/Program/Apps/uav_image/MapRTK
Here_Path=/data/zhaoyong/Linux/config_shell/Data/Program_Shell_Support/MapRTK/Shell_Support
MapRTK_Shell_Support_Path=$Here_Path
alias MapRTK="bash $Here_Path/$Program_Name.sh"

	if [ -f "$Here_Path/Name_Complete.sh" ]; then
	. $Here_Path/Name_Complete.sh
	fi
