# If not running interactively, don't do anything
#[ -z "$PS1" ] && return

# OS
#if [ "$(uname -s)" = "Darwin" ]; then
#  OS="macOS"
#else
#  OS=$(uname -s)
#fi

## PATHS ##
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH=~/.composer/vendor/bin:$PATH

## COLORS & PROMPT ##
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

## GENERIC ##
alias listaliases="alias | sed 's/=.*//'"
export EDITOR=/usr/local/bin/subl
export BLOCKSIZE=1k
alias week="date +%V"

## HISTORY ##
export HISTSIZE=10000000
export HISTFILESIZE="${HISTSIZE}";
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTIGNORE="pwd:ls:ll:"
shopt -s histappend
alias h='history'
alias hh='history |grep'

# After each command, append to the history file and reread it
# export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Save and reload the history after each command finishes
#export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"



## DIR LISTING ##
alias l='ls -lG'
alias ll='ls -lhaAr'
alias lll="ls -FlhArtG"

# LS_TIMESTYLEISO=`is-supported "ls --time-style=long-iso" --time-style=long-iso`
# LS_GROUPDIRSFIRST=`is-supported "ls --group-directories-first" --group-directories-first`

# alias l="ls -lahA $LS_COLORS $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"
# alias ll="ls -lA $LS_COLORS"
# alias lt="ls -lhAtr $LS_COLORS $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"
# alias ld="ls -ld $LS_COLORS */"
# alias lpm="stat -c '%a %n' *"

## TERMINAL COMMANDS ##
alias rr="rm -rf"
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -G'
alias qfind="find . -name "
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
ln='ln -sv'

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

## MACOS ##
alias finder='open -a Finder ./'
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

## NETWORK ##

alias ssha='ssh-add -K' 
#ssh-add ~/.ssh/marinos_rsa
alias flush="dscacheutil -flushcache"
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'
alias ipInfo0='ipconfig getpacket en0' 
alias openPorts='sudo lsof -i | grep LISTEN' 
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias speedtest="wget -O /dev/null http://speed.transip.nl/100mb.bin"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ipl="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias allnet='arp -ani en0'

alias airport='sudo /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias aircrack='aircrack-ng -1 -a 1 -b'

for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="lwp-request -m '$method'"
done

## APPS ##
alias doc='docker'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

## SERVERS ##
alias transitlounge='ssh root@dev.transitlounge.one'
alias videorecht='ssh m4rinos@alpha.videorecht.nl'
alias marinos='ssh m4rinos@hosting.marinos.nl -p 10001'

## Cleanup ##
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"


#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        #echo -e "\n${RED}Public facing IP Address :$NC " ;myip
        #echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }

#   extract:  Extract most know archives with one command
#   ---------------------------------------------------------
    extract () {
        if [ -f $1 ] ; then
          case $1 in
            *.tar.bz2)   tar xjf $1     ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar e $1     ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xf $1      ;;
            *.tbz2)      tar xjf $1     ;;
            *.tgz)       tar xzf $1     ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)     echo "'$1' cannot be extracted via extract()" ;;
             esac
         else
             echo "'$1' is not a valid file"
         fi
    }








