export GIT_PROMPT_EXECUTABLE="haskell"
source $CONFIG/zsh-git-prompt/zshrc.sh
PROMPT='%B%~%b$(git_super_status) %# '
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

HISTSIZE=130000 SAVEHIST=130000
PATH="/Users/yirui/bin:$PATH"
PATH="/Users/yirui/devtools/buck/bin/:$PATH"
PATH="/opt/local/bin:$PATH"
alias findc='find . -iname'
alias findcf='find . -type f -iname'
alias findcd='find . -type d -iname'

