# 🚀 Minimal & Professional Neovim Setup (Lua)

A beginner-friendly, modular Neovim configuration built with **KISS** logic. 
Includes LSP, Autocomplete, GitHub Copilot, and a VS Code-style Terminal.

## 🛠️ Features
- **Plugin Manager:** [Lazy.nvim](https://github.com/folke/lazy.nvim)
- **Theme:** TokyoNight (Night variant)
- **Terminal:** Integrated bottom terminal (`toggleterm.nvim`)
- **AI:** GitHub Copilot integration
- **Search:** Telescope (Fuzzy finder)

## 📦 Installation

### 1. Prerequisites
Ensure you have the following installed on your system:
* **Neovim (v0.9.0+ )**
* **Git, Curl, Unzip**
* **A C Compiler** (gcc or clang for Treesitter)
* **A [Nerd Font](https://www.nerdfonts.com/)** (Required for icons)

### 2. Setup
```bash
# Clone the config into your Neovim folder
git clone [https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git) ~/.config/nvim

# Open Neovim
nvim

Wait for the plugins to install automatically. Restart Neovim once finished.


⌨️ Essential Shortcuts (Leader = Space)


Shortcut,Action
Space + ff,Find Files (Search by name)
Space + fg,Live Grep (Search text inside files)
Ctrl + b,Toggle File Explorer
Ctrl + \,Toggle Bottom Terminal
Alt + l,Accept Copilot Suggestion
Space + w,Save File
Shift + l / h,Next / Previous Tab


🤝 Contributing

 1.   Fork the repo.

 2.   Create your branch (git checkout -b feature/AmazingFeature).

 3.   Commit your changes.

 4.   Push to the branch and Open a Pull Request.
