# Setup fzf
# ---------
if [[ ! "$PATH" == */home/bchifu/.vim/pack/bchifu/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/bchifu/.vim/pack/bchifu/opt/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/bchifu/.vim/pack/bchifu/opt/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/bchifu/.vim/pack/bchifu/opt/fzf/shell/key-bindings.bash"
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'
export FZF_DEFAULT_OPTS="--no-mouse --height 50% -1 --reverse --multi --inline-info --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)'"

