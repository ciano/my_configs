TERM=ansi;export TERM
PATH=$PATH:.;export PATH

HISTFILESIZE=1000
HISTSIZE=500
HISTCONTROL=ignoredups 
shopt -s histappend

export LS_COLORS="di=1;36"
export EDITOR=vim
export PAGER=less

# system tools shortcuts
alias back='cd -'
alias ls='ls --color=yes'
alias dir='ls -l'
alias dirf='ls -al'
alias dirn='ls -lt'
alias dird='ls -l | grep ^d'
alias h="history 30"
alias more=less
alias mroe=more

# application shortcuts
bc () { 'c:/progra~2/beyond~1/bcompare.exe' "$@" & }
#alias cvs='c:/progra~2/cvsnt/cvs -N'
#alias cvs='c:/utils/cvsnt/cvs -N'

gin () { gvim "$@" & }
gi () { gvim --servername "gvim" --remote-silent "$@" & }
gir () { gvim --servername "gvim$1" --remote-silent "$2 $3 $4 $5 $6 $7 $8 $9" & }
girt () { gvim --servername "gvim$1" --remote-tab-silent "$2 $3 $4 $5 $6 $7 $8 $9" & }
alias ipy='c:/prog/Python27/Scripts/ipython.exe'

alias msw='c:/progra~2/MIF5BA~1/office12/winword'
alias mse='c:/progra~2/MIF5BA~1/office12/excel'
#svnco () { svn co https://quasar/svn/projects/"$@" }
alias svnlog='python y:/projects/utils/genlog.py > c:/tmp/genlog.txt;gi c:/tmp/genlog.txt'
alias svncf='svn commit -F c:/tmp/genlog.txt'
#alias svnprop='svn propedit svn:log --revprop -r \!*'
alias svnbcd='svn diff --diff-cmd ~/diffwrap.bat'
alias vi=vim
alias vnc="c:/progra~2/tightvnc/vncviewer &"
alias rvnc="realvnc &"
alias uvnc="uvnc &"

# directory shortcuts
alias ibm='cd y:/projects/muttlogic/ibm'
alias proj='cd y:/projects'
alias py='cd y:/projects/code/python'
alias fi='cd c:/data/finance'
alias es='cd c:/data/finance/escrow'

# misc shortcuts
alias sleep_on="powercfg.exe -setactive 381b4222-f694-41f0-9685-ff5bb260df2e"
alias sleep_off="powercfg.exe -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c"

alias myrsync="rsync --verbose --progress --stats --compress --recursive --times /cygdrive/c/media/ poiani@quasar::media"

alias wake_nova='C:/utils/WolCmd.exe 001b213a7714 192.168.1.12 255.255.255.0'
alias wake_sirius='C:/utils/WolCmd.exe 90E6BA6C8C83 192.168.1.11 255.255.255.0'

