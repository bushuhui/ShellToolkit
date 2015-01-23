Program_Name=Kinect_PTAM
export Kinect_PTAM_Path=/data/zhaoyong/Linux/Program/Apps/Kinect_PTAM
Here_Path=/data/zhaoyong/Linux/config_shell/Data/Program_Shell_Support/Kinect_PTAM/Shell_Support
Kinect_PTAM_Shell_Support_Path=$Here_Path
alias Kinect_PTAM="bash $Here_Path/$Program_Name.sh"

	if [ -f "$Here_Path/Name_Complete.sh" ]; then
	. $Here_Path/Name_Complete.sh
	fi
