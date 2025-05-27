SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

ln -s $SCRIPTPATH/vim/vimrc ~/.vimrc
ln -s $SCRIPTPATH/zsh/zshrc ~/.zshrc

mkdir -p ~/.config/yazi
ln -s $SCRIPTPATH/yazi/yazi.toml ~/.config/yazi/yazi.toml

mkdir -p ~/.config/tmux
ln -s $SCRIPTPATH/tmux/tmux.conf ~/.config/tmux/tmux.conf

mkdir -p ~/.config/alacritty
ln -s $SCRIPTPATH/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
