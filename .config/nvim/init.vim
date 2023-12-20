set number
set rnu
set ignorecase
set list
set foldmethod=indent
set foldlevel=99
set nowrap

colorscheme elflord

set cursorline
highlight CursorLine cterm=bold term=bold ctermbg=8
highlight CursorLineNR cterm=bold ctermfg=15 ctermbg=8
highlight LineNR ctermfg=8
highlight MatchParen cterm=bold ctermbg=9 ctermfg=15

set scrolloff=0

set lazyredraw

inoremap " ""<left>
inoremap "" ""
inoremap ' ''<left>
inoremap '' ''
inoremap 'a <'a>
inoremap ( ()<left>
inoremap () ()
inoremap ) ()
inoremap <BS> <BS><ESC>zza
inoremap <C-o><C-o> <C-O>
inoremap <CR> <CR><SPACE><ESC>zza<BS>
inoremap <DOWN> <DOWN><ESC>^zz
inoremap <ESC> <ESC>zz
inoremap <M-,> <ESC>A,
inoremap <M-/> <ESC>0i// <ESC>a
inoremap <M-/><M-/> <ESC>0i/// <ESC>a
inoremap <M-3> #<SPACE>
inoremap <M-3><M-3> ##<SPACE>
inoremap <M-3><M-3><M-3> ###<SPACE>
inoremap <M-;> <ESC>A;
inoremap <M-;><M-;> ();
inoremap <M-ESC> <ESC>^zz
inoremap <M-Q> <ESC>:q!<CR>
inoremap <M-a> <ESC>A
inoremap <M-a><M-a> assert!();<ESC>hi
inoremap <M-a><M-e><M-q> assert_eq!();<ESC>hi
inoremap <M-c><M-b> <esc>:! cargo build<cr>
inoremap <M-c><M-c> <ESC>cc<ESC>zzi
inoremap <M-c><M-f> <esc>:! cargo fix --allow-dirty --allow-staged --workspace<cr>
inoremap <M-c><M-r> <esc>:! cargo run<cr>
inoremap <M-c><M-t> #[cfg(test)]<ESC>o<ESC>zzA
inoremap <M-d><M-b> dbg!();<ESC>F(a
inoremap <M-d><M-e> #[derive()]<ESC>hi
inoremap <M-e><M-e> enum  {<CR>}<ESC>k5li
inoremap <M-f> <ESC>:! grep -rni . -e 
inoremap <M-f><M-f> fn  () {<CR>}<ESC>kt(i
inoremap <M-i> <ESC>I
inoremap <M-o> <ESC>o<SPACE><ESC>zzxa
inoremap <M-o><M-p> Option<><ESC>i
inoremap <M-p> <ESC>O<SPACE><ESC>zzxa
inoremap <M-p><M-p> println!("{}")<ESC>F{a
inoremap <M-p><M-u> pub use ;<ESC>i
inoremap <M-q> <ESC>:q<CR>
inoremap <M-s> <ESC>:w<CR>a
inoremap <M-s><M-f> String::from("")<ESC>hi
inoremap <M-s><M-t> struct  {<CR>}<ESC>k7li
inoremap <M-t><M-s> #[test]<ESC>ofn  () {<CR>}<ESC>kzzt(i
inoremap <M-t><M-t> todo!();<ESC>hi
inoremap <M-u><M-u> use ;<ESC>i
inoremap <M-}> <SPACE>-><SPACE>
inoremap <M-}><M-}> <SPACE>=><SPACE>
inoremap <PAGEDOWN> <PAGEDOWN><ESC>^zz
inoremap <PAGEUP> <PAGEUP><ESC>^zz
inoremap <UP> <UP><ESC>^zz
inoremap [ []<left>
inoremap [] []
inoremap \|\| \|x\|<SPACE>
inoremap ] []
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O<SPACE><ESC>zzA<BS>
inoremap {} {}
inoremap } {}
nnoremap % %zz
nnoremap 'a 'a^zz
nnoremap 'b 'b^zz
nnoremap 'c 'c^zz
nnoremap 'd 'd^zz
nnoremap 'e 'e^zz
nnoremap ( (zz
nnoremap ) )zz
nnoremap * *zz
nnoremap ++ "+
nnoremap <DOWN> <DOWN>^zz
nnoremap <LEADER>l :tabe ~/.config/nvim/init.vim<CR>
nnoremap <LEADER>rl :source ~/.config/nvim/init.vim<CR>
nnoremap <M-/> 0i// <ESC>
nnoremap <M-Q> :q!<CR>
nnoremap <M-c><M-b> <esc>:! cargo build<cr>
nnoremap <M-c><M-f> <esc>:! cargo fix --allow-dirty --allow-staged --workspace<cr>
nnoremap <M-c><M-r> <esc>:! cargo run<cr>
nnoremap <M-c><M-t> <esc>:! cargo test<cr>
nnoremap <M-f> :! grep -rni . -e 
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
nnoremap <M-o> o<ESC>zz
nnoremap <M-p> O<ESC>zz
nnoremap <M-q> :q<CR>
nnoremap <M-s> :w<CR>
nnoremap <PAGEDOWN> <PAGEDOWN>^zz
nnoremap <PAGEUP> <PAGEUP>^zz
nnoremap <UP> <UP>^zz
nnoremap G Gzz^
nnoremap N Nzz
nnoremap O O<SPACE><ESC>zzxa
nnoremap cc ^C
nnoremap dd ddzz
nnoremap gg ggM^
nnoremap j j^zz
nnoremap k k^zz
nnoremap n nzz
nnoremap o o<SPACE><ESC>zzxa
nnoremap p pzz
nnoremap u uzz
nnoremap { {zz
nnoremap } }zz
vnoremap " xi""<ESC>hpl
vnoremap ( xi()<ESC>hpl
vnoremap * xi**<ESC>hpl
vnoremap ** xi****<ESC>2hp2l
vnoremap ++ "+
vnoremap < xi<><ESC>hpl
vnoremap <DOWN> <DOWN>zz
vnoremap <M-LEFT> <
vnoremap <M-RIGHT> >
vnoremap <PAGEDOWN> <PAGEDOWN>zz
vnoremap <PAGEUP> <PAGEUP>zz
vnoremap <UP> <UP>zz
vnoremap G Gzz
vnoremap [ xi[]<ESC>hpl
vnoremap j jzz
vnoremap k kzz
vnoremap y yzz
vnoremap { xi{}<ESC>hpl
vnoremap {{ xi{<CR>}<ESC>PkV%>V<%V<
