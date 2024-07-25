# Install Scripts

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
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Add the following to your .zshrc file:
plugins=(
        git
        zsh-syntax-highlighting
        zsh-autosuggestions
        zsh-completions
        )
```

4. Install brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/$(whoami)/.zshrc
```

5. Install apps and tools with brew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/sun33t/install-scripts-v2/main/install-brew.sh)"
```
