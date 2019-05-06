first-setting-for-mac: homebrew ansible-install dotconfig ansible-roles

.PHONY: homebrew
homebrew:
ifeq ($(shell type brew 2> /dev/null),)
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby
endif

ansible-install:
	brew install ansible

dotconfig:
	[ -d ~/.config ] || mkdir ~/.config

ansible-roles:
	./bin/dot-bootstrap
