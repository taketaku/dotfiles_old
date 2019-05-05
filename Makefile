first-setting-for-mac:
	homebrew-install
	ansible-install
	dotconfig
	ansible-roles

homebrew-install:
ifeq ($(shell type brew 2> /dev/null),)
	/usr/bin/ruby -e \
	"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
endif

ansible-install:
	brew install ansible

dotconfig:
	[ -d ~/.config ] || mkdir ~/.config

ansible-roles:
	./bin/dot-bootstrap
