# ~/.zshrc  (symlink -> ~/workspace/dotfiles/zshrc)

# ---------- oh-my-zsh ----------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"
plugins=(git vi-mode)
source $ZSH/oh-my-zsh.sh

# ---------- Môi trường ----------
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='nvim'
export VISUAL='nvim'
export GLAMOUR_STYLE=light
export COLORFGBG="15;0"

# ---------- PATH ----------
export PATH="$HOME/.local/bin:$PATH"                 # pipx, claude
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$BUN_INSTALL/_bun" ] && source "$BUN_INSTALL/_bun"

export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# Không tự đổi version pnpm theo field "packageManager"
export PNPM_CONFIG_MANAGE_PACKAGE_MANAGER_VERSIONS=false

# ---------- Tools ----------
eval "$(fzf --zsh)"
export FZF_DEFAULT_COMMAND='fd --type f --strip-cwd-prefix --hidden --follow --exclude .git'

[ -f "$HOMEBREW_PREFIX/etc/profile.d/autojump.sh" ] && . "$HOMEBREW_PREFIX/etc/profile.d/autojump.sh"
[ -f "$HOME/.x-cmd.root/X" ] && . "$HOME/.x-cmd.root/X"
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Ctrl-x Ctrl-e: sửa dòng lệnh bằng nvim
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line
bindkey -M vicmd '^x^e' edit-command-line

# ---------- Aliases ----------
alias nodejs="node"
alias ls="eza --icons=always"
alias ll="eza -la --icons=always"
alias vi='nvim'
alias sed=gsed
alias zshcf='nvim ~/.zshrc'
alias zshexec='. ~/.zshrc'
alias nvimcf='nvim ~/.config/nvim'
alias ghosttycf='nvim ~/workspace/dotfiles/ghostty/config.ghostty'

alias ff="nvim \"\$(fd --type f --hidden --exclude .git .  | fzf --preview 'bat --style=numbers --color=always --line-range :50 {}')\""
alias to="cd \"\$(fd --type d --hidden --exclude .git . | fzf)\""
alias gff="nvim \"\$(fd --type f --hidden --exclude .git . ~ | fzf --preview 'bat --style=numbers --color=always --line-range :50 {}')\""
alias gto="cd \"\$(fd --type d --hidden --exclude .git . ~ | fzf)\""

alias crg="yes | code-review-graph install --platform antigravity --platform claude-code && code-review-graph build"
alias claude="claude --dangerously-skip-permissions"
alias agy="agy --dangerously-skip-permissions"

# ---------- Plugins (phải ở cuối file) ----------
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
