

set path+=** " Maybe Telescope will make it obsolete.

" Netrw -- Vim's default integrated file explorer. Maybe Telescope will make
" it obsolete.
let g:netrw_banner=1
let g:netrw_liststyle=3


" Default spaces/tabs settings
set tabstop=4
set softtabstop=4
set ai shiftwidth=4
set expandtab " I prefer indenting with spaces rather than with tabs
" NoMatchParen " I don't know how to add it to the Neovim config
set noshowmatch
" set linebreak

" Let Lua find out every file's filetype
let g:did_load_filetypes = 0
let g:do_filetype_lua = 1

set list
" set scrolloff
" set autoread
" set listchars=trail:.
set clipboard=unnamedplus
" set wrapscan

set hidden " Lets me leave a buffer without saving it

let mapleader=","


" " jk as <Esc> in insert mode; jk as TODO TKTK in the integrated terminal
" inoremap jk <esc>
" tnoremap jk <C-\><C-n>


" Wrapping
set nowrap " I prefer hard wrapping (rather than soft wrapping)
" Highlights sotf wrap so that I can unset numbering lines. Indents by 2
" additional characters on wrapped lines; when line >= 40 characters puts
" 'showbreak' to the left in the same line
set breakindent
set breakindentopt=shift:2,min:40,sbr
set showbreak=⤷


" " Folding -- I use Tree-Sitter now for folding
" set foldmethod=expr  ----  Alternative: marker
" set foldexpr=nvim_treesitter#foldexpr()
" set foldlevel=99


" TODO Problem with formatoptions. Doesn't take effect by itself
set formatoptions-=cro
set nojoinspaces " French spacing: a single space after '.', '?', etc.; not two
set cursorline


" Backup and undo
set nobackup
set undofile " Saves undos after closing a file
set undodir=$HOME/.config/nvim/undodir " Where is undo history saved
set undolevels=1000 " how many undos it saves
set undoreload=10000 " how many undo lines it saves


" Searching (more info in https://stackoverflow.com/a/2288438/7026520)
set ignorecase
set smartcase
set incsearch


" Remembers the cursor last position in every file
if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" lua << EOF
" vim.api.nvim_create_autocmd('BufReadPost', {
"   callback = function()
"     local mark = vim.api.nvim_buf_get_mark(0, '"')
"     local lcount = vim.api.nvim_buf_line_count(0)
"     if mark[1] > 0 and mark[1] <= lcount then
"       pcall(vim.api.nvim_win_set_cursor, 0, mark)
"     end
"   end,
" })
" EOF


" For per-project Neovim config files, there is now the neoconf.nvim plug-in
" from folke.


" " Ctags -- LSP makes it obsolete
" command! MakeTags !ctags -R .
" nnoremap <leader>t :MakeTags<cr>






