## Gist-settings

###Installation
Install `gist-vimrc` python package before:
```shell
pip install git+https://github.com/yanlobkarev/gist-vimrc.git
```
Add Plug dependency:
```vimscript
Plug 'yanlobkarev/gist-settings.vim'
```

###Usage
```vimscript
:VimrcPush " pushes your editor's vimrc to gist with the same name
:VimrcPull " pulls and overwrites your local .vimrc from gist
```

###Create uour own mappings
```vimscript
nnoremap <silent> <M-P> :VimrcPush<CR>
nnoremap <silent> <M-p> :VimrcPull<CR>
```
