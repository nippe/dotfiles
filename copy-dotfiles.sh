
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
