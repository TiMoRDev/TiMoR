#!/usr/bin/env bash
cd $HOME/TiMoR
rm -rf $HOME/.telegram-cli
install() {
rm -rf $HOMEX/.telegram-cli
sudo chmod +x tg
chmod +x TiMoR
chmod +x ts
./ts
}
if [ "$1" = "ins" ]; then
install
fi
chmod +x install.sh
lua start.lua
