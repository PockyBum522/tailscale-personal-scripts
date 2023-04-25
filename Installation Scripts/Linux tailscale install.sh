apt install curl -y

curl -fsSL https://pkgs.tailscale.com/stable/debian/bullseye.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null

curl -fsSL https://pkgs.tailscale.com/stable/debian/bullseye.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list

apt-get update

apt-get install tailscale -y

tailscale login --advertise-exit-node # --hostname=OVERRIDE-HOSTNAME-HERE

tailscale up --advertise-exit-node -ssh # --hostname=OVERRIDE-HOSTNAME-HERE