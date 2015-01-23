Program_Name=example
export example_Path=/data/zhaoyong/Linux/Desktop/config_shell/Data/Program_Shell_Support
Here_Path=/data/zhaoyong/Linux/config_shell/Data/Program_Shell_Support/example/Shell_Support
example_Shell_Support_Path=$Here_Path
alias example="bash $Here_Path/$Program_Name.sh"

	if [ -f "$Here_Path/Name_Complete.sh" ]; then
	. $Here_Path/Name_Complete.sh
	fi
