#export Function_Top=
Function_Path=$Function_Top/functions
export Function_Data_Path=$Function_Top/Data
. $Function_Data_Path/MyAlias.sh
. $Function_Top/Include/function_name_complete

#Makefile support
if [ -f "$Function_Data_Path/Makefile_Setup.sh" ]; then
	source "$Function_Data_Path/Makefile_Setup.sh"
fi

#Program Shell Support
if [ -f "$Function_Data_Path/Program_Shell_Support/Setup.sh" ]; then
	source "$Function_Data_Path/Program_Shell_Support/Setup.sh"
fi

#cuda support
if [ -f "/data/zhaoyong/Linux/Program/Apps/cuda-5.0/setenv.sh" ]; then
	source "/data/zhaoyong/Linux/Program/Apps/cuda-5.0/setenv.sh"
fi

