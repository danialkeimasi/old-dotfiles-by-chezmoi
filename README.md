# Danial's Dotfiles

```
╱╱╭━━━┳━━┳╮╱╱╭━━━┳━━━╮
╱╱┃╭━━┻┫┣┫┃╱╱┃╭━━┫╭━╮┃
╱╱┃╰━━╮┃┃┃┃╱╱┃╰━━┫╰━━╮
╱╱┃╭━━╯┃┃┃┃╱╭┫╭━━┻━━╮┃
╭╮┃┃╱╱╭┫┣┫╰━╯┃╰━━┫╰━╯┃
╰╯╰╯╱╱╰━━┻━━━┻━━━┻━━━╯
```

# Installation

Install chezmoi and dotfiles with this single command:

```sh
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply danialkeimasi
```

Update `/etc/hosts`:

- mypp

# TODO

- [ ] add packages used in both arch and ubuntu
- [ ] script for flatpak packages

# Root Systemd Services

- Map Redmikey To F12: `/etc/systemd/system/redmikey.service`
```
[Unit]
Description=PowerTOP auto tune

[Service]
Type=oneshot
Environment="TERM=dumb"
RemainAfterExit=true
ExecStart=/usr/bin/setkeycodes 72 88

[Install]
WantedBy=multi-user.target
```

# Touchpad
- Turn off `apz.gtk.kinetic_scroll.enabled` in firefox.
