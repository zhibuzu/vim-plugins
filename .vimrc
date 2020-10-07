set runtimepath+=~/.vim_runtime
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
set number

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

if has('mouse')
    set mouse=a
endif

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
"inoremap { {<CR>}<ESC>O

"""""""""""""""""""""""
" => emmet-vim
"""""""""""""""""""""""
" Enable in different mode
" let g:user_emmet_mode='n'    "only enable normal mode functions.
" let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

" Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css,vue EmmetInstall

" Redefine trigger key
" To remap the default <C-Y> leader:
let g:user_emmet_leader_key='<tab>'

" g:user_emmet_leader_key is meaning of leading key to replace <c-y>, to <tab>,. So you need to typoe comma after typing <c-y>.
" If you just want to expand with <tab> key, try following.
" let g:user_emmet_expandabbr_key = '<tab>'

"""""""""""""""""""""""""""""""""""""""""
" => taglist
"""""""""""""""""""""""""""""""""""""""""
map <silent> <leader>tl :TlistToggle<cr>
