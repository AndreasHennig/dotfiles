SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

ln -s $SCRIPTPATH/zsh/zshrc ~/.zshrc
ln -s $SCRIPTPATH/vim/vimrc ~/.vimrc

ln -s $SCRIPTPATH/ideavim/ideavimrc ~/.ideavimrc

mkdir -p ~/.config/yazi
ln -s $SCRIPTPATH/yazi/yazi.toml ~/.config/yazi/yazi.toml

mkdir -p ~/.config/tmux
ln -s $SCRIPTPATH/tmux/tmux.conf ~/.config/tmux/tmux.conf

mkdir -p ~/.config/alacritty
ln -s $SCRIPTPATH/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml

mkdir -p ~/.config/fastfetch
ln -s $SCRIPTPATH/fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc

mkdir -p ~/.config/aerospace
ln -s $SCRIPTPATH/aerospace/aerospace.toml ~/.config/aerospace/aerospace.toml
