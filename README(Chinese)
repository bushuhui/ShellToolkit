使用说明

1.安装
	将文件解压到想要安装到的路径，然后安装
./function install
	如果提示权限不够，则使用以下命令安装
sudo bash ./function install

2.使用
	很多使用不广泛的功能都已经略去，剩下里面集成了一些方便又常用的功能，下面一一介绍：

1）被重命名的命令
qt 用来在新进程里打开qtcreator的*.pro文件
ins 代替sudo apt-get install安装包
search 代替sudo apt-cache search搜索包
make 代替 make -j4 4线程编译

2）日记，笔记
	可以使用Diary和Note命令写日记及笔记
Note 想要记录的东西  --用来记录
Note |grep KeyWord   --无参数，用来显示记录，可使用管道搜索


3）为当前路径提供快速cd支持
Function HereName [Name] [Path] Path默认为当前路径
	使用这句后cd到Path只需要在终端里输入Name即可

4）为参数较多的可执行文件提供历史记录以及参数记忆和参数自动补全功能
	这个功能是将这个包发给大家的主要原因，有时候我们往往容易忘记某个程序的使用方法和调用时需要输入的参数，这里提供的方法可以给这样的程序保存使用记录和使用过的参数列表，并在之后的使用中提供历史查询和自动补全功能
用法:
cd到程序所在的路径
Function AddShellSupport MY_FUNCTION --给程序MY_FUNCTION添加此功能，这里的程序名跟变量名的要求类似，不能包含.'"等符号

	以后可直接用MY_FUNCTION代替./MY_FUNCTION调用程序，当这样做时，将激活以上功能
MY_FUNCTION -history ------查询使用记录
	使用Tab键自动补全参数

5）由于这里提供了一个Shell脚本的框架，大家可以轻松地添加自己的函数
Function -add Function_Name ---添加新的函数Function_Name
