if test ! $(which brew); then
	echo "Installing homebrew ..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brews=(
	git
	jq
	httpie
	lastpass-cli
	icdiff
	wget
	tree
	macvim
	fish
	jq
	direnv
	awscli
	openssl
  yarn
  fasd
  icdiff
  nmap
  hub
  ag
  node
  nvm
)

casks=(
	alfred
	atom
	firefox
	google-chrome
	iterm2
	slack
	witch
	dropbox
	spotify
	ngrok
	hazel
  dropbox
  slack
  firefox
  vlc
  flux
  caffeine
  evernote
  kaleidoscope
  soulver
  sonos
  calibre
  #omnifocus
)

echo "installing brews..."
brew install ${brews[@]}

echo "installing casks..."
brew cask install ${casks[@]}
