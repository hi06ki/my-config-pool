# Prompt Settings
autoload -Uz colors
colors

precmd() {
padding=$(( $COLUMNS - ( ${#HOST} + ${#USER} + ${#PWD} + 11 ) ))
eval "hyphens=\${(l:${padding}::-:)}"
case ${USERNAME} in
'root')
PROMPT="%B%F{014}---%F{008}(%F{082}%d%F{008})%F{014}$hyphens%F{008}(%F{014}%n%F{008}@%F{014}%m%F{008})%F{014}---%f
%F{009}>%F{124}>%F{052}>%f%b "
;;
*)
PROMPT="%B%F{014}---%F{008}(%F{082}%d%F{008})%F{014}$hyphens%F{008}(%F{014}%n%F{008}@%F{014}%m%F{008})%F{014}---%f
%F{009}>%F{011}>%F{010}>%f%b "
;;
esac
}

# Alias settings
## Set python3 as default
## PREREQUISITE: Need to install python3
alias python='python3'

## Set lolcat as cat
## PREREQUISITE: Need to install lolcat
alias cat='lolcat'

## Set option for rm
alias rm='rm -Irv'

