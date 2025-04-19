# Path Initialization
# @see https://apple.stackexchange.com/a/432227

# Homebrew
# @see https://brew.sh
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm
# @see https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion