# Install Scripts

## Description

Steps to follow when reinstalling macos.

## Create Bootable Install

Follow the instructions [here](https://support.apple.com/en-gb/101578) to create and use a bootable installer to reinstall the latest version of macos.

## Order of Execution

1. Install xcode command line tools

```sh
xcode-select --install
```

2. [Install oh-my-zsh](https://ohmyz.sh/#install) and associated plugins:
    - [Install zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
    - [Install zsh-completions](https://github.com/zsh-users/zsh-completions#oh-my-zsh)
    - [Install zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
    - Add the following to your .zshrc file: `plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions)`

3. [Install Homebrew](https://brew.sh/) and then download the [txt files](./homebrew), edit as you wish and then install with brew:
    - Download [clis.txt](homebrew/clis.txt) and use `brew install $(cat <path-to-clis.txt>)`.
    - Download [casks.txt](homebrew/casks.txt) and use `brew install $(cat <path-to-casks.txt>)`.


5. [Install nvm](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)

6.  Setup .gitconfig
    The SSH key for authorising commits is being managed by 1Password so find the key there and follow instructions for setting it up. In addition, set the following git settings:

```bash
git config --global user.name "<NAME>"
git config --global user.email "<EMAIL>"
git config --global init.defaultBranch "<new-branch-name>"
```

8.  Setup ~/.ssh/config
    The SSH key for authorising the dev environment with your Github account is being managed by 1Password. Find the key there and follow the instructions for setting it up.

9.  Import ScanSnap profiles

10. Return config files located within the [config-backups](/config-backups/) directory to their original locations.

11. Restore Parallels virtual machines.

12. Restore any files/folders to home directory.

13. Install claude code

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

Also, install the relevant mcp servers (e.g. ref.tools, figma mcp)

14. [Further setup options](https://youtu.be/GK7zLYAXdDs?si=6rtzR-sUi7b0AgCx)
