# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -lrth'
alias sl='ls'
alias lat='lt -A'

# case insensitive grepping with ls
li () {
	ls | grep -i $1
}

lit () {
	lt | grep -i $1
}

##########################################################
# some make aliases because I can't spell
alias amke='make'
alias mkae='make'
alias amek='make'

##########################################################
# SSH Stuff

## openconnect vpn
alias vpnstart="sudo $HOME/scripts/vpn_start.sh"
alias vpnend="sudo $HOME/scripts/vpn_end.sh"

##########################################################

##########################################################
# getting into certain directories without the hassle

alias parp='cd ~/researchstuff'
alias code='cd ~/code'
alias fun='cd ~/fun'
alias doc='cd ~/Documents'
alias dwn='cd ~/Downloads'
alias boo='cd ~/books'
alias play='cd ~/playground'
alias pippin='ssh pippin'

# moving up directories faster (sorta like zsh)
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

##########################################################

# Git stuff
alias gad='git add *'
alias gstat='git status'
alias gull='git pull'
alias gush='git push'
alias gcm='git commit -m'

##########################################################
# opening things - applications, or shorter versions of
# one-line commands

alias show='zathura' # PDF viewer that's not trash
alias calc='gcalccmd' # CLI calculator
alias mail='mutt' # mail client mutt
alias fm='nemo .' # Cinnamon's file manager, nemo
alias defop='xdg-open' # opens with default application
alias priv='opera -private' # private browsing in opera
alias acc='gedit ~/Desktop/Diacritics &' #copy-paste accent marks
alias mypy='python3.7' # uses python 3.8
alias wut='show ~/fun/Learnt/main.pdf &' # my guide!
alias yuh='emacs -nw' #emacs cli
alias nav='ranger' #ranger! for CLI file navigation
alias gpt='gnuplot' #gnuplot yee
alias img='eog *.png' #show all PNG images
alias ridzoom='killall -r '[z,Z]oom'' #zoom is really jank
alias sound='pavucontrol' #manages sound for me

##########################################################
# Computer stuff so I don't go crazy

alias new='cd;clear;clear'
alias mt='clear;clear'
alias up='sudo apt-get -y update; sudo apt-get -y dist-upgrade'
alias totclean='up; sudo apt-get -y clean ;sudo apt-get -y autoclean; sudo apt-get -y autoremove'
alias reb='sudo reboot'
alias wai='echo -e "You are in \e[1;34m$HOSTNAME\e[m"; pwd' #hostname in bright blue
alias rel='source ~/.bashrc'
alias fn='find -name'
#increases brightness by input using xrandr
setb () {
	b=$(xrandr --verbose | grep -m 1 -w connected -A8 | grep Brightness | cut -f2- -d: | tr -d ' ')
	b=$(echo "$b+$1" | bc -l)
	xrandr --output eDP-1 --brightness $b
	echo $b
}

# function that makes a directory and goes into it
mgo () {
	mkdir $1
	cd $1
}

##########################################################

#GLITCHY MISCELLANEOUS

##########################################################
# Fun stuff!

alias frog='cat ~/fun/frog.txt'
alias quo='mypy $HOME/scripts/quote/quote.py'
alias cc='fortune' #fortune! cookie...
alias frogfortune='fortune | cowthink -f bud-frogs'
