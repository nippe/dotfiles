if test ! $(which brew); then
	echo "Installing homebrew ..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brews=(
	autojump
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
  google-chorme
  firefox
  vlc
  flux
  caffeine
  evernote
)

echo "installing brews..."
brew install ${brews[@]}

echo "installing casks..."
brew cask install ${casks[@]}
