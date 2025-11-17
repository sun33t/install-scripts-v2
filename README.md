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

2. Install oh-my-zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

3. Install oh-my-zsh plugins

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

```sh
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
```

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

# Add the following to your .zshrc file:

plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
zsh-completions
)

```sh
source .zshrc
```

4. Install brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/$(whoami)/.zshrc
```

```sh
source .zshrc
```

5. Install apps and tools with brew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/sun33t/install-scripts-v2/main/install-brew.sh)"
```

6. Install nvm

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
```

7.  Setup .gitconfig
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

13. [Further setup options](https://youtu.be/GK7zLYAXdDs?si=6rtzR-sUi7b0AgCx)
