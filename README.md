# improve-steamos-script
A script that improves steamos

## Run the script

```bash
curl -s https://raw.githubusercontent.com/dnkmmr69420/improve-steamos-script/main/configure-steamos.sh | bash
```

## Info

This script does

- Removes all flatpaks installed on system profile and sets up flathub on the user profile since /var has less disk space allocated
- Makes breeze theme appear on gtk3 flatpaks
- Configures distrobox so it is ready for use
- Installs [neofetch](https://github.com/hykilpikonna/hyfetch/blob/master/neofetch) in ~/.local/bin
