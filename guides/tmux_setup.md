## Install TMUX

* Run: `sudo apt-get install tmux` to install

* Setup Config Options:
  1. Symlink it:
      * `ln -s ~/dotfiles/tmux ~/.config`
  2. Copy the config into `~/.config/tmux/tmux.conf`


* If you run into issues with error 127 regarding tpm, run this command: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm` [(Source)](https://github.com/tmux-plugins/tmux-resurrect/issues/41)

* Source the config using `tmux source ~/.config/tmux/tmux.conf`, restart the tmux session using `<C-b>-I`

* If you have trouble loading the config, run `tmux -f ~/.config/tmux/tmux.conf`
  * You can set this as an alias in `~/.zshrc`
  * `echo 'alias tmux="tmux -f ~/.config/tmux/tmux.conf"' >> ~/.zshrc`
