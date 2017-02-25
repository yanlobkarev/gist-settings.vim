## Gist-settings

First steps of learning Vimscript the hard way
shows us how to edit .vimrc in place and apply
it. But after that you realizes that You have
to sync .vimrc between several computers while 
picking up new vim features/key bindings.
    Dot files is good choice. But in case You
need some more simple- You could use it (Just
two commands, like pull and push).

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
At first run plugin will prompt You with github api key- 
You need to follow link, generate _Personal access token_ 
with _gist_ scope. And paste it in vim.
    
###Create your own mappings
```vimscript
nnoremap <silent> <M-P> :VimrcPush<CR>
nnoremap <silent> <M-p> :VimrcPull<CR>
```
