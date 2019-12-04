if test ! $(which brew); then
	echo "Installing homebrew ..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brews=(
  aws-sam-cli
  awscli
  git
  jq
  fsad
  httpie
  go
  lastpass-cli
  icdiff
  wget
  tree
  jq
  direnv
  awscli
  openssl
  yarn
  fasd
  nmap
  hub
  ag
  nvm
  fzf
  diff-so-fancy
  terraform
  watchman
  zsh-autosuggestions
  zsh-syntax-highlighting
)

casks=(
  alfred
  caffeine
  dropbox
  firefox
  graphql-playground
  google-chrome
  iterm2
  slack
  witch
  spotify
  ngrok
  hazel
  dropbox
  kaleidoscope
  slack
)

echo "installing brews..."
brew install ${brews[@]}

echo "installing casks..."
brew cask install ${casks[@]}
