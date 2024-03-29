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
# SSH


## openconnect vpn
alias vpnstart="sudo $HOME/scripts/vpn_start.sh"
alias utvpn="sudo $HOME/scripts/utstart.sh"
alias vpnend="sudo $HOME/scripts/vpn_end.sh"

##########################################################

##########################################################
# getting into certain directories without the hassle

alias parp='cd ~/researchstuff'
alias toc='cd ~/code'
alias fun='cd ~/fun'
alias doc='cd ~/Documents'
alias dwn='cd ~/Downloads'
alias boo='cd ~/books'
alias play='cd ~/playground'
alias dsk='cd ~/Desktop'
alias mus='cd ~/music'
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
alias gcb='git checkout -b'
alias gba='git branch -a'
alias gerge='git merge'

##########################################################
# opening things - applications, or shorter versions of
# one-line commands

alias show='zathura' # PDF viewer that's not trash
alias calc='gcalccmd' # CLI calculator
alias mail='mutt' # mail client mutt
alias fm='nemo .' # Cinnamon's file manager, nemo
alias defop='xdg-open' # opens with default application
alias mypy='python3.7' # uses python 3.8
alias yuh='emacs -nw' #emacs cli
alias nav='ranger' #ranger! for CLI file navigation
alias gpt='gnuplot' #gnuplot yee
alias img='eog *.png' #show all PNG images
alias ridzoom='killall -r '[z,Z]oom'' #zoom is really jank
alias sound='pavucontrol' #manages sound for me
alias scs='import' #follwed by sth.png takes screenshot
alias todo='vi ~/todo' # my todo list
alias holy='show ~/books/funBooks/jirt/FotR.pdf' # fellowship
alias web='cd /home/krithika/code/webStuff/my-app' # my website
##########################################################
# Computer stuff so I don't go crazy

alias up='sudo apt-get -y update; sudo apt-get -y dist-upgrade'
alias totclean='up; sudo apt-get -y clean ;sudo apt-get -y autoclean; sudo apt-get -y autoremove'
alias reb='sudo reboot'
alias wai='echo -e "You are in \e[1;34m$HOSTNAME\e[m"; pwd' #hostname in bright blue
alias rel='source ~/.bashrc'
alias fn='find -name'
alias proc='ps aux | grep'
alias stor='du -h --max-depth=1 . | sort -h'
#increases brightness by input
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
