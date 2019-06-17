fpath=("$HOME/.local/share/zsh/site-functions" $fpath)

# Pure Prompt by Sindre Sorhus, install from AUR
autoload -U promptinit; promptinit
prompt pure

# Autocompletion
autoload -U compinit; compinit

# # Zsh plugins
source ~/.local/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.local/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.local/share/zsh/plugins/zsh-nvm/zsh-nvm.plugin.zsh

source ~/.aliases


export EDITOR=/usr/bin/nano
export SSH_KEY_PATH="~/.ssh/id_rsa"
export GITHUB_TOKEN="ad544"
export PATH="./node_modules/.bin:$PATH"
