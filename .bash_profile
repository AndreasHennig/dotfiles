source ~/.git-completion.bash
source ~/git-prompt.sh

alias ls='ls -lisaG'

# Set Git language to English
#alias git='LANG=en_US git'
alias git='LANG=en_GB git'

echo "custom .bash_profile loaded"

echo -e "\x1B[30m30 \x1B[31m31 \x1B[32m32 \x1B[33m33 \x1B[34m34 \x1B[35m35 \x1B[36m36 \x1B[37m37"

PS1='\e[36m\W\e[35m$(__git_ps1 " (%s)")\e[37;0m\e[0m: '
