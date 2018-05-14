# vim_tmux_zsh
* fast way to recover a ubuntu working environment: vim + tmux + zsh (never be afraid of configing a new account)
* install
    - `sudo apt-get install vim tmux zsh`
    - `bash installWorkingEnv.sh`
    - `sudo chsh --shell=/bin/zsh <userName>`  # set zsh as default

![](2018-05-12.png?raw=true "Title")

## vim:
* install vundle, which manage all the plugins
    - 'vimwiki/vimwiki' 'scrooloose/nerdtree' 'tpope/vim-fugitive' 'VimIM' 'ervandew/supertab' 'rdnetto/ycm-generator' 'valloric/youcompleteme' 'luochen1990/rainbow' 'mrtazz/simplenote.vim' 'nathanaelkane/vim-indent-guides'
    - find your own plugins in: https://vimawesome.com/.
* commands you must know:
    - `:q` quit current tab; `:wq` save and quit; `:q!` leave *without* saving
    - `:tabnew` open another empty tab
* shortcuts you must know:
    - jump among tabs: `gt`/`gT` next/previous tab
    - jump in file: `<ctrl> u / d` half-page scroll up / down; `gg` / `G` goto head / end of the file
    - goto / leave the _insert mode_: `i` / `<Esc>`
    - first step to master vim: run `vimtutor` in terminal (not in vim).

## tmux:
* change the `<bind key>` from `<ctrl>+b` to `<alt>+m` (easier for me)
* set to vi mode (can search / scroll / move use vi shortcuts)
* shortcuts you must know:
    - `<bind key> + c/x` create/delete new session
    - `<bind key> + <session index> / l` jump to specific / previous session
    - `<bind key> + d` detach from the current sessions. Attach the existing sessions: `tmux attach`

## zsh:
* use a custome-built scheme based on "kphoen" with 2-line layout, like:
```bash
(virtual / conda env)<userName>@<machineName>:<pwd, could be very long path> | <git_branch>           <git status>
% <command>
```

## terminal:
* shortcuts you must know:
    - `<ctrl><shift>+t` open a new tab
    - `<alt>+1/2/3...` select the 1st/2nd/3rd/... tab
    - `F11` turn on/off full screen mode
