# Helaxious's .vimrc

## Update

Recently, I've been using [helix](https://github.com/helix-editor/helix) for a while now, It's pretty good, but for me it's not a 100% replacement (mostly because of markdown) to neovim, in the future helix should get a lot better and should be a good canditate to replace neovim.

## How to use

In the case of the `.vimrc`, copy/substitute with your current `.vimrc`, the `plugins` folder is  the `.vim` folder, to install the plugins inside of it, run `:PlugInstall` inside vim, and then, go inside  `plugins/plugged/YouCompleteMe` and run `python3 install.py --all` (careful, this will warrant 2GB of space for the autocomplete stuff)

## What's on the stock?

For the plugins, simply go to the `.vimrc` to check that, this repo also has a converted version of the [spacedust theme](https://github.com/hallski/spacedust-theme) (`set background=dark` & `:colo spacedust`), and the [PaperColor theme](https://github.com/NLKNguyen/papercolor-theme) (`set background=light` & `:colo PaperColor`).
