# ---- FZF -----
eval "$(fzf --zsh)"

# --- fd by default ---
export FZF_DEFAULT_COMMAND="fd --type f --hidden --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden --exclude .git"

# --- Pywal colors ---
# source wal colors if available
[[ -f ~/.cache/wal/colors.sh ]] && source ~/.cache/wal/colors.sh

# FZF default colors from pywal, fallback if not defined
export FZF_DEFAULT_OPTS="--color=fg:${color7:-#CBE0F0},bg:${color0:-#011628},hl:${color3:-#B388FF},fg+:${color7:-#CBE0F0},bg+:${color0:-#143652},hl+:${color3:-#B388FF},info:${color6:-#06BCE4},prompt:${color4:-#2CF9ED},pointer:${color4:-#2CF9ED},marker:${color4:-#2CF9ED},spinner:${color4:-#2CF9ED},header:${color4:-#2CF9ED}"
#
# --- Preview function string ---
show_file_or_dir_preview='
if [ -d "{}" ]; then
  tree --color=always "{}" | head -20
else
  bat --style=numbers --color=always --line-range :500 "{}"
fi
'

export FZF_CTRL_T_OPTS="--preview \"$show_file_or_dir_preview\" --preview-window=right:60%"
export FZF_ALT_C_OPTS="--preview 'tree --color=always {} | head -20' --preview-window=right:60%"

# --- Key bindings and completion (source only once) ---
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh

export FZF_DEFAULT_COMMAND="fd --type f"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d"
[[ -f ~/.cache/wal/colors.sh ]] && source ~/.cache/wal/colors.sh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.tmp/z/z.sh 
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
export PATH="$HOME/.local/bin:$PATH"
alias g='firefox https://google.com'
alias y='xdg-open https://youtube.com'
alias f='firefox https://facebook.com'
alias m='firefox https://messenger.com'
net() {
    if [[ -z "$1" ]]; then
        echo "URL not fount!"
        return 1
    fi

    url="$1"

    # + https://
    if [[ "$url" != http*://* ]]; then
        url="https://$url"
    fi

    firefox "$url"
}

# --- Pacman aliases ---
alias upd='sudo pacman -Syyu'     # Mirror refresh + full upgrade
alias up='sudo pacman -Syu'       # Full system upgrade
alias in='sudo pacman -S'         # Install package
alias rem='sudo pacman -Rns'      # Remove + dependencies
alias se='pacman -Ss'             # Search repo
alias li='pacman -Qs'             # Search installed packages

# --- YAY (AUR) aliases ---
alias yup='yay -Syu --nocleanmenu --nodiffmenu'  # Full update repo + AUR
alias yi='yay -S'                                 # Install AUR/repo pkg
alias yse='yay -Ss'                                # Search AUR/repo

