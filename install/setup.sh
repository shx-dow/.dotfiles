#!/usr/bin/env bash
set -euo pipefail

DOTFILES="$HOME/dotfiles"

echo "==> Installing system packages..."
sudo apt update
sudo apt install -y \
  git curl unzip \
  ripgrep fd-find fzf \
  btop stow zsh tmux neovim \
  eza zoxide

echo "==> Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

echo "==> Installing Tmux Plugin Manager..."
TPM_DIR="$HOME/.tmux/plugins/tpm"
if [ ! -d "$TPM_DIR" ]; then
  git clone --depth 1 https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi

echo "==> Stowing dotfiles..."
cd "$DOTFILES"
stow -v git shell zsh tmux nvim btop

echo "==> Done!"
echo ""
echo "Manual steps remaining:"
echo "  - Install nvm:       curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash"
echo "  - Install pnpm:      curl -fsSL https://get.pnpm.io/install.sh | sh -"
echo "  - Install bun:       curl -fsSL https://bun.sh/install | bash"
echo "  - Install lazygit:   https://github.com/jesseduffield/lazygit"
echo "  - Reload shell:      exec zsh"
