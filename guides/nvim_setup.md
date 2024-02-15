## Install NVIM

* Prequisite System Components:
    * Python version >= 3.8
    * `ripgrep`
    * `fd-find`
    * `pip install neovim`

    * If issues with Mason installing things because of NPM not installed:
        * Install NVM: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash`
        * Use nvm to install npm: `nvm install --lts`

* Install steps
    * Build and install nvim from [https://github.com/neovim/neovim]
    * Take your config and link it (make sure to use absolute paths) `ln -s <path to github_repo/nvim> ~/.config/nvim`
    * Get telescope-file-browser from [https://github.com/nvim-telescope/telescope-file-browser.nvim]
    * Install clangd for C++ indexing
