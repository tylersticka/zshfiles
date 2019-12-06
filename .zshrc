# Executible paths
# Prefer local installations of Git, Python, etc.
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# Node version manager
# TODO: Consider deeper nvm integration? https://github.com/nvm-sh/nvm#zsh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Allow case insensitive wildcards
setopt NO_CASE_GLOB

# Automatically cd to paths when cd command is missing
setopt AUTO_CD

# Case-insensitive tab completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'

# Partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# Autojump
if which brew > /dev/null && [ -f "$(brew --prefix)/etc/profile.d/autojump.sh" ]; then
	source "$(brew --prefix)/etc/profile.d/autojump.sh";
elif [ -f /usr/share/autojump/autojump.sh ]; then
	source /usr/share/autojump/autojump.sh;
fi

# Pure prompt
# @see https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure