Program_Name=interface
interface_Path=/data/zhaoyong/Linux/Program/Apps/imu_related_docs/AHRS_mini/AHRS_glviewer
Here_Path=/data/zhaoyong/Linux/config_shell/Data/Program_Shell_Support/interface/Shell_Support
interface_Shell_Support_Path=$Here_Path
alias interface="bash $Here_Path/$Program_Name.sh"

	if [ -f "$Here_Path/Name_Complete.sh" ]; then
	. $Here_Path/Name_Complete.sh
	fi
