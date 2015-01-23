Program_Name=pathplane_gui
pathplane_gui_Path=/data/zhaoyong/Linux/Program/Apps/pathplan_gui
Here_Path=/data/zhaoyong/Linux/config_shell/Data/Program_Shell_Support/pathplane_gui/Shell_Support
pathplane_gui_Shell_Support_Path=$Here_Path
alias pathplane_gui="bash $Here_Path/$Program_Name.sh"

	if [ -f "$Here_Path/Name_Complete.sh" ]; then
	. $Here_Path/Name_Complete.sh
	fi
