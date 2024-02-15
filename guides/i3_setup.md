* Install i3 prerequisite applications

* To control backlight on laptop install brightnessctl, add user to video group, and add keybindings to the i3 config 
    * `sudo apt-get install brightnessctl`
    * `sudo usermod -aG video $USER`
        * Make sure to logout and login after this step otherwise it won't work. This is needed to allow you to run brightnessctl without sudo.
    * Bindings:
        * bindsym XF86MonBrightnessDown exec --no-startup-id brightnessctl --min-val=2 -q set 5%-
        * bindsym XF86MonBrightnessUp exec --no-startup-id brightnessctl -q set 5%+


* To control the appearance
    * Install lxappearance `sudo apt install lxappearance`, run it to customize
    * Some notable themes: `sudo apt install materia-gtk-theme papirus-icon-theme`


* To customize the status bar
    * Install awesome fonts
        * `sudo apt install fonts-font-awesome`


* To setup screenshots
    * Install: `sudo apt-get install maim xclip`
    * In config: setup to clip selection and save to folder and to clipboard:
        * `bindsym Shift+Print exec --no_startup_id path="$HOME/Pictures/Screenshots/$(date).png" && maim -s "$path" && xclip -selection clipboard -t image/png "$path"`
        
* To setup backgrounds for multiple monitors
    * Install `sudo apt-get install nitrogen`
    * In config:
        `exec --no-startup-id nitrogen --restore`

* Customize i3status bar
    * Copy it to config from etc: `cp /etc/i3status.conf $HOME/.config/i3`
    * Add to the config - change the bar {}:
        * From `status_command i3status` to `status_command istatus --config /home/$USER/.config/i3/i3status.conf`


* Add sound to i3status.conf
    * To get the device: `pacmd list-sinks | grep name ` (make sure to append `"pulse:"` to it)

            order += "volume master"

            volume master {
                format = "V: %volume"
                format_muted = "V: muted (%volume)"
                device = "pulse:alsa_output.pci-0000_0b_00.4.analog-stereo"
                mixer = "Master"
                mixer_idx = 0
            }

* Add sound limitation (default is infinite boost beyond 100%)
    * Add these lines to config, and `sudo apt-get install pulsemixer`

            bindsym XF86AudioRaiseVolume exec --no-startup-id pulsemixer --change-volume +5 --max-volume 100 #increase sound volume
            bindsym XF86AudioLowerVolume exec --no-startup-id pulsemixer --change-volume -5 --max-volume 100 #decrease sound volume
            bindsym Shift+XF86AudioRaiseVolume exec --no-startup-id pulsemixer --change-volume +5 --max-volume 150 #increase sound>
            bindsym Shift+XF86AudioLowerVolume exec --no-startup-id pulsemixer --change-volume -5 --max-volume 150 #decrease sound>

* Install i3blocks from source

            git clone https://github.com/vivien/i3blocks
            cd i3blocks
            ./autogen.sh
            ./configure
            make
            make install

* Components for status bar
    * WiFi (ssid, strength, IP)
    * Ethernet (connected, IP, speed)
    * Sound (muted, level)
    * Free space (/, /home)
    * Used memory
    * Date


### Helpful Commands

* To print out the keybind name for a specific key, use this command
    * `xev -event keyboard | sed -Ene 's/.*keycode\s*([0-9]*)\s*\(keysym\s*\w*,\s*(\w*)\).*/keycode \1 (\2)/' -e '/keycode/p'`
    
* To print out monitors and their display names
    * `xrandr | grep -w 'connected'`