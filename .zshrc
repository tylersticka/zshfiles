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

# Run nvm use automatically
# @see https://github.com/nvm-sh/nvm#zsh
autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Allow case insensitive wildcards
setopt NO_CASE_GLOB

# Automatically cd to paths when cd command is missing
setopt AUTO_CD

# Case-insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# Partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# Pure prompt
# @see https://github.com/sindresorhus/pure
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure

# Zoxide
# @see https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init zsh)"

# Ease transition from Autojump to Zoxide
alias j="z"