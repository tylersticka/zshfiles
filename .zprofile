# Path Initialization
# @see https://apple.stackexchange.com/a/432227

# Prefer local installations
export PATH="$HOME/.local/bin:$PATH"

# Homebrew
# @see https://brew.sh
if [ -d "/opt/homebrew/bin" ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# nvm
# @see https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion