# embik/dotfiles

Yet another iteration of my dotfiles, this time for macOS. You can find older dotfiles in the non-`main` branches [fedora-dotfiles](https://github.com/embik/dotfiles/tree/fedora-dotfiles) (for my Fedora dotfiles) and [old-dotfiles](https://github.com/embik/dotfiles/tree/old-dotfiles) (for my much older Gentoo dotfiles). These branches are not actively used/maintained but will be kept around for documentation purpose.

My dotfiles are managed and applied via [chezmoi](https://www.chezmoi.io).

## What's Included?

The following tools are customized in my dotfiles:

- Shell: [zsh](https://www.zsh.org)
- Editor/IDE: [neovim](https://neovim.io) (_config requires neovim 0.7+_)
- Command line prompt: [starship](https://starship.rs)

## Configuration

Configure templates in this `chezmoi` repository via `~/.config/chezmoi/chezmoi.toml`. The following variables are expected:

| Key               | Description                         |
| ----------------- | ----------------------------------- |
| `git_email`       | email address for git configuration |
| `git_signing_key` | GPG key ID for signing git commits  |
