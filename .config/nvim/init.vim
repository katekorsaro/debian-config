" Default switches and flags
set cursorline
set expandtab
set foldlevel=99
set foldmethod=indent
set ignorecase
set lazyredraw
set list
set nohlsearch
set nowrap
set number
set rnu
set scrolloff=0
set shiftwidth=4
set tabstop=4
set textwidth=100

" Theme and colors
colorscheme elflord
highlight CursorLine cterm=bold term=bold ctermbg=8
highlight CursorLineNR cterm=bold ctermfg=15 ctermbg=8
highlight LineNR ctermfg=8
highlight MatchParen cterm=bold ctermbg=9 ctermfg=15

" Insert mode remap
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
inoremap <C-w> <ESC>ggVGgwgg
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
inoremap <M-w> <ESC>:w !sudo tee %<CR>a
inoremap <M-}> <SPACE>-><SPACE>
inoremap <M-}><M-}> <SPACE>=><SPACE>
inoremap <PAGEDOWN> <PAGEDOWN><ESC>^zz
inoremap <PAGEUP> <PAGEUP><ESC>^zz
inoremap <UP> <UP><ESC>^zz
inoremap [ []<left>
inoremap [] []
inoremap \|\| \|x\|<SPACE>
inoremap ] []
inoremap jk <ESC>
inoremap kj <ESC>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O<SPACE><ESC>zzA<BS>
inoremap {} {}
inoremap } {}

" Normal mode remap
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
nnoremap <C-c> "+y
nnoremap <C-c><C-c> ggVG"+ygg
nnoremap <C-w> ggVGgwgg
nnoremap <C-y> ggVG
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
nnoremap <M-w> :w !sudo tee %<CR>
nnoremap <PAGEDOWN> <PAGEDOWN>^zz
nnoremap <PAGEUP> <PAGEUP>^zz
nnoremap <S-Tab> V<
nnoremap <Tab> V>
nnoremap <UP> <UP>^zz
nnoremap G Gzz^
nnoremap J :m .+1<CR>==zz
nnoremap K :m .-2<CR>==zz
nnoremap M M^
nnoremap N Nzz
nnoremap O O<SPACE><ESC>zzxa
nnoremap cc ^C
nnoremap dd ddzz
nnoremap gg gg^
nnoremap j j^zz
nnoremap k k^zz
nnoremap n nzz
nnoremap o o<SPACE><ESC>zzxa
nnoremap p pzz
nnoremap u uzz
nnoremap { {zz
nnoremap } }zz

" Visual mode remap
vnoremap ++ "+
vnoremap <DOWN> <DOWN>zz
vnoremap <LEADER>(( c()<ESC>Pa
vnoremap <LEADER>[[ c[]<ESC>Pa
vnoremap <LEADER>{{ c{}<ESC>Pa
vnoremap <LEADER>)) xi(<CR>)<ESC>PVi(=Vi(
vnoremap <LEADER>]] xi[<CR>]<ESC>PVi[=Vi[
vnoremap <LEADER>}} xi{<CR>}<ESC>PVi{=Vi{
vnoremap <PAGEDOWN> <PAGEDOWN>zz
vnoremap <PAGEUP> <PAGEUP>zz
vnoremap <S-Tab> <gv
vnoremap <Tab> >gv
vnoremap <UP> <UP>zz
vnoremap G Gzz
vnoremap J :m '>+1<CR>gv=gvzz
vnoremap K :m '<-2<CR>gv=gvzz
vnoremap j jzz
vnoremap k kzz
vnoremap y yzz
