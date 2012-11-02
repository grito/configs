# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

shopt -s histappend
PROMPT_COMMAND='history -a $PROMPT_COMMAND'

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vnctunnel='ssh -L 5900:localhost:5900 eko@10.34.2.150'
alias vncrun='vncviewer localhost::5900'
alias pbdesk='publican build --langs=en-US --formats=html-desktop'
alias pbpdf='publican build --langs=en-US --formats=pdf'
alias pbhtml='publican build --langs=en-US --formats=html'
alias pbsingle='publican build --langs=en-US --formats=html-single'
alias cd..='cd ..'
#alias e='errnum.sh'
alias pb='publican clean && publican build --langs=en-US --formats=html,html-single,html-desktop,pdf'
alias ff='firefox tmp/en-US/html-single/index.html || firefox tmp/en-US/html-desktop/index.html'
alias ch='/opt/google/chrome/google-chrome tmp/en-US/html-single/index.html'
alias pbpacksimple='publican package --cvs --lang en-US'
alias stage='rhpkg publican-build --lang en-US --message "Updated the book."'
alias pbcheck="publican build --format test --lang en-US"
alias pbpackold="publican package --cvs --lang en-US"
#alias pay="paysdoc build "
#alias payss="firefox paysdoc/document/tmp/en-US/html-single/index.html"
alias bastion='ssh -f -N -p 330 bastion'
alias bump='publican bump --lang en-US'
alias jd='cd /home/eko/Desktop/DocumentationEKO/JBossDocs/'
alias eap5='cd /home/eko/Documentation/5.x/'
#alias tn58='cd /home/eko/Desktop/DocumentationEKO/technical\ notes/5.8/RHEL5-Technical_Notes'


export EDITOR=vim
# export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
export PS1='\[\e[1;34m\]\u\[\e[0m\]\[\e[1;34m\]\w\[\e[0m\]\$ '
#export PS1='[\u \w\]$' 
#export PATH="$PATH:$HOME/.cabal/bin:/usr/java"
export BRUNO="10.34.2.102"
export HEIDI="10.34.2.150"
export HISTCONTROL="ignoreboth"
#export JAVA_HOME="/usr/bin/java"

# alias meld='meld ~/Desktop/temp.txt ~/Desktop/temp2.txt'
alias enable3buttons='gsettings set org.gnome.settings-daemon.peripherals.mouse middle-button-enabled true'

#XML catalog location
#XML_CATALOG_FILES="${HOME}data/xml/catalog /etc/xml/catalog"
#export XML_CATALOG_FILES


