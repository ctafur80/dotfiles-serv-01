


" " Finds a token syntax; with <F10>. The old way; not Tree-Sitter
" map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
" \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
" \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
" " set Vim-specific sequences for RGB colors


colorscheme habamax
set termguicolors
" set background=dark
" highlight Comment ctermfg=8

" colorscheme atlas

" highlight CursorLine cterm=NONE
" ctermbg=232
" highlight SignColumn ctermbg=NONE


" Tree-Sitter
lua << EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    sync_install = false,
    -- ignore_install = {"markdown"},

    highlight = {
        enable = true,
        -- disable = {"markdown"},
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = true,
        -- disable = {"markdown"},
    }
}
EOF






