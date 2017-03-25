# ALIASES

# This is a meta alias that allows you to open this file in Vim, edit it, and 
# then immediately source it.
alias ea='vim ~/bin/dotfiles/bash/.bash_aliases; source ~/bin/dotfiles/bash/.bash_aliases;'
alias ez='vim ~/.zshrc; source ~/.zshrc'	

# This alias does the same thing, but for the .bashrc file
alias brc='vim ~/.bashrc; source ~/.bashrc;'

# This aliases shows me all the commands I've used in order from most
# used to least. Btw the 'sort -nr' stands for numerical sort in reverse order
# (descending order). And 'uniq -c' is a command that actually count the occurences
# of each command.
alias topcommands='history | cut -c 8-1000 | sort | uniq -c | sort -nr | less'


# Elinks
alias wiki='elinks https://wikipedia.org'


# Weather Report (for London, but you can change to any city)
alias weather='curl -4 wttr.in/London'


# ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias lf='ls -CF'
alias l='ls -la'

# Aptitude aliases
alias aptg='sudo apt-get install'
alias aptr='sudo apt-get remove'
alias aptp='sudo apt-get purge'
alias aptu='sudo apt-get update'
alias aptgr='sudo apt-get upgrade'



# This function creates a directory, and 
# cds into it after creation.
mkcd () {
    # The $1 refers to any first argument passed
    mkdir $1
    cd $1
}


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

