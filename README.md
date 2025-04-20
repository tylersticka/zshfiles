# zshfiles

My simple [ZSH](http://www.zsh.org/) configuration. 🤓

## Prerequisites

- [Node Version Manager](https://github.com/nvm-sh/nvm)
- [Pure](https://github.com/sindresorhus/pure)
- [Zoxide](https://github.com/ajeetdsouza/zoxide)

## Installation

1. Create a `.zsh` folder in your home directory.
1. Clone this repository in that directory.
1. Create a `.zshenv` file in your home directory.
1. Add `export ZDOTDIR=~/.zsh` to that file.
1. Restart any open zsh sessions.

## Troubleshooting

### Missing Commands in VS Code (WSL)

As of this writing, VS Code does not seem to source `.zprofile` except for login
shells. This can be fixed in your user `settings.json`:

```json
{
	"terminal.integrated.profiles.linux": {
		"zsh (login)": {
			"path": "/usr/bin/zsh",
			"args": ["--login"]
		},
	},
	"terminal.integrated.defaultProfile.linux": "zsh (login)"
}
```

## Resources

- [macOS Terminal Theme: Snazzy](https://github.com/lysyi3m/macos-terminal-themes?tab=readme-ov-file#snazzy-download)
- [Moving to ZSH](https://scriptingosx.com/2019/06/moving-to-zsh/)