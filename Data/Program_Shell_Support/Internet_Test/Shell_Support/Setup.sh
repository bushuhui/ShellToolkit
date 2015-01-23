Program_Name=Internet_Test
export Internet_Test_Path=/data/zhaoyong/Linux/Program/Apps/Lib_ZY/apps/Internet_Test
Here_Path=/data/zhaoyong/Linux/config_shell/Data/Program_Shell_Support/Internet_Test/Shell_Support
Internet_Test_Shell_Support_Path=$Here_Path
alias Internet_Test="bash $Here_Path/$Program_Name.sh"

	if [ -f "$Here_Path/Name_Complete.sh" ]; then
	. $Here_Path/Name_Complete.sh
	fi
