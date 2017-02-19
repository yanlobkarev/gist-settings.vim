function! s:VimrcGist(com)
    let com = 'gist-vimrc '.a:com.' --vimrc '.$MYVIMRC
    let _ = system(com)   
     
    if v:shell_error==1
        call inputsave()
        let token = input("Visit page https://github.com/settings/tokens\nGenerate a new token\nAnd input below\n[Gist token]: ")
        let com = com.' --token '.token
        call inputrestore()
        let _ = system(com)
    endif
  
    let out = v:shell_error 
    silent redraw!
    if out==3
        echo 'No gists to pull from (expected gist with name ...)'
    elseif out==2
        echo 'Unknown error (API token or Internet access)'
    elseif out==0
        if (match(a:com, 'push') == 0)
            echo "Pushed vimrc to gist"
        elseif (match(a:com, 'pull') == 0)
            echo "Pulled vimrc from gist"
        endif
    endif
endfunction

function! gist_settings#VimrcPush()
    :call <SID>VimrcGist('push')
endfunction

function! gist_settings#VimrcPull()
    :call <SID>VimrcGist('pull')
endfunction
