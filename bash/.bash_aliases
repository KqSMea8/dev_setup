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

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# change path
alias ap='cd ~/github/apollo'
alias ap2='cd ~/github/apollo2'
alias ai='cd ~/github/apollo-internal'
alias as='cd ~/github/apollo-simulator'
alias eng='cd ~/github/replay-engine'
alias dset='cd ~/github/dev_setup'

# docker cmd
alias bstart='~/github/apollo-internal/docker/scripts/dev_start.sh'
alias binto='~/github/apollo-internal/docker/scripts/dev_into.sh'
alias rstart='~/github/apollo-internal/docker/scripts/release_start.sh'
alias rinto='~/github/apollo-internal/docker/scripts/release_into.sh'
alias dclean='docker ps -aq -f "status=exited" | xargs docker rm'
alias iclean='docker images -aq -f "dangling=true" | xargs docker rmi'
alias dps='docker ps'
alias dtag='docker images --format "{{.Repository}}:{{.Tag}}"'
alias di='docker images' 
alias drmi='docker rmi -f'

# source cmd
alias sbrc='source ~/.bashrc'
alias vibrc='vi ~/.bashrc'

# azure
alias az_list='az aks list --output table'
alias az_east='az aks get-credentials -g prod -n apollo-dl-prod-eastus'
alias az_staging='az aks get-credentials -g test -n apollo-dl-staging-centralus'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# ssh
alias scar='ssh apollo@192.168.10.6'
alias sdev='ssh wanglei@172.19.61.250'
alias sidg='ssh idgsim@172.19.61.250'
alias slei='ssh leiwang@172.19.40.63'
alias sre='ssh wanglei63@relay01.baidu.com'
alias svm='ssh apollo@52.224.64.156'
alias sbce='ssh root@180.76.233.27'


# sftp
alias flei='sftp leiwang@172.19.40.63'
