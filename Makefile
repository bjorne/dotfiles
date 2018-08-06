install: subinstall stow

subinstall:
	cd emacs/.emacs.d && make install

stow:
	stow zsh emacs && touch $@

.PHONY: install
