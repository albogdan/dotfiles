## Install Kitty 


* Install it:
    * `curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`
    * Create symbolic links to add kitty and kitten to PATH (assuming ~/.local/bin is in your system-wide PATH)
        * `ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/`


* Edit the i3 config for terminal to start kitty
    * `bindsym $mod+Return exec kitty`

* Setup Config Options:
    1. Symlink it:
      * `ln -s ~/dotfiles/kitty ~/.config`
    2. Copy it to ~/.config/kitty

## Setup Fonts

* Symlink the fonts directory
    * `ln -s ~/dotfiles/fonts ~/.local/share/`
* Run `fc-cache -fv`