# echo "Install brews"
# ./brews.sh

# TODO: // check if it already exists
echo "Coning vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# TODO: // check if it already exists
echo "Spaceship theme"
curl -o - https://raw.githubusercontent.com/denysdovhan/spaceship-zsh-theme/master/install.zsh | zsh

PAUSE "fsd"

echo "vimrc"
cp vimrc ~/.vimrc

echo "zshrc"
cp zshrc ~/.zshrc

echo "aliases"
cp aliases ~/.aliases

echo "gitconfig"
cp gitconfig ~/.gitconfig

echo "sourceing zshrc"
source ~/.zshrc

echo "zprofile"
cp zprofile ~/.zprofile

echo "vs code plugins"
./vscode/install-vscode-extensions.sh


