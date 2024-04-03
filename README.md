# .dotfiles

Repo for my dotfiles, using `stow` to manage symlinks.

## Prerequisties

- git
- [stow](https://www.gnu.org/software/stow/)
- [oh-my-zsh](https://ohmyz.sh/)
- vim/nvim
- fzf
- zoxide
- tmux
- xsel / xclip (x11)
- wl-clipboard (wayland)
- ripgrep

## Install (default)

```
cd ~
git clone <repo>
./.dotfiles/install
```

## Install (specific)

We can export specific items we want to symlink, by default only `nvim` and `zsh` directories are expected, you can manually specify others by exporting `STOW_FOLDERS` environment variable with comma separated list. This can allow you to add additional directories for personal/sensitive configs.
You can also add personal or work specific folders with this too.

```
export STOW_FOLDERS="nvim,tmux,zsh,alacritty"
./.dotfiles/install
```

## Remove

```
cd ~
./dotfiles/remove
```

## Tmux Installation

Guidance on configuring Tmux. Plugin Manager here is [TPM](https://github.com/tmux-plugins/tpm)

```
mkdir -P ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Plugins

- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) (currently disabled as I think I prefer the prefix option so I can use <ctrl>+l to clear screen)

## Nvim Installation

Guidance on configuring nvim. Plugin Manager of choice here is [lazy.nvim](https://github.com/folke/lazy.nvim)

### Plugins

- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-telescope/telescope](https://github.com/nvim-telescope/telescope.nvim)
- [loctvl842/monokai-pro](https://github.com/loctvl842/monokai-pro.nvim) (Theme)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
- [markdown-preview](https://github.com/iamcco/markdown-preview.nvim)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [L3M0N4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [williamboman/mason](https://github.com/williamboman/mason.nvim)
- [williamboman/mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
- [stevearc/conform](https://github.com/stevearc/conform.nvim)
- [mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint)

## References

Giving credit to those who've inspired my dotfiles setup, workflow and configs

- [ThePrimeagen](https://github.com/ThePrimeagen)
- [josean-dev](https://github.com/josean-dev)
