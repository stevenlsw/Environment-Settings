# Color terminal
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Command Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -alh'

# Environment Path 
export PATH=/Users/shaoweiliu/Env/anaconda3/bin:$PATH

# Re-direction for rm operation:https://blog.csdn.net/Thousa_Ho/article/details/78521795
alias rm=trash 
alias r=trash 
alias rl='ls ~/.trash' 
alias ur=undelfile 
undelfile() 
{ 
    mv -i ~/.trash/$@ ./ 
} 
trash() 
{ 
    mv $@ ~/.trash/ 
}
cleartrash()
{
    read -p "clear sure?[n]" confirm 
    [ $confirm == 'y' ] || [ $confirm == 'Y' ]  && /bin/rm -rf ~/.trash/* 
}

## added by Anaconda3 2019.10 installer
## >>> conda init >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/shaoweiliu/Env/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    \eval "$__conda_setup"
#else
#    if [ -f "/Users/shaoweiliu/Env/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/Users/shaoweiliu/Env/anaconda3/etc/profile.d/conda.sh"
#        CONDA_CHANGEPS1=false conda activate base
#    else
#        \export PATH="/Users/shaoweiliu/Env/anaconda3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
## <<< conda init <<<
