export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=1

ZSH_THEME="dracula"
DISABLE_UPDATE_PROMPT="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git
  npm
  docker
  docker-compose
  fast-syntax-highlighting
  history-substring-search
  zsh-completions
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

source ~/.exports.sh
source ~/.alias.sh
