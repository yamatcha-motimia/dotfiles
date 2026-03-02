# General: Common directories for scripts and system-local tools (e.g., win32yank)
fish_add_path "$HOME/bin"
fish_add_path "$HOME/.local/bin"
fish_add_path "/usr/local/bin"

# Typst CLI: Path for binaries installed via Typst's local manager
fish_add_path "$HOME/.typst/bin"

# Neovim: AppImage installation directory
# Appended to the end of PATH to avoid overriding system-wide binaries
fish_add_path "/opt/nvim/"
