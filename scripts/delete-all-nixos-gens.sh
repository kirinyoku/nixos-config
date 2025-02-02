#!/run/current-system/sw/bin/bash

sudo nix-env -p /nix/var/nix/profiles/system --delete-generations
sudo nix-collect-garbage -d
sudo nix-env -p /nix/var/nix/profiles/system --list-generations
# sudo bash -c "cd /boot/loader/entries; ls | grep -v <current-generation-name> | xargs rm"
