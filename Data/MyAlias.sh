alias  Function="bash $Function_Top/function"
alias  qt="$Function_Path/qtcreator.func"
alias  Diary="$Function_Path/diary.func"
alias  Note="$Function_Path/note.func"

alias ins='sudo apt-get install'
alias search='sudo apt-cache search'
alias make="make -j4"

{
export PS1="\[\033[32m\]\W>\[\033[0m\] "
export PS2='> '
export PS4='+ '
}

. $Function_Data_Path/nautilus_alias

#Other aliases

alias makesimp="$Function_Path/make.func -m simp"
alias makebin="$Function_Path/make.func -m bin"
alias makelib="$Function_Path/make.func -m lib"
alias makeall="$Function_Path/make.func -m all"

