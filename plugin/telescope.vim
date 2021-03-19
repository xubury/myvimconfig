" lua << EOF
" local actions = require('telescope.actions')
" require('telescope').setup {
"   defaults = {
"     file_sorter = require('telescope.sorters').get_fzy_sorter,
"     prompt_prefix = ' >',
"     color_devicons = true,

"     mappings = {
"       i = {
"         ["<C-x>"] = false,
"         ["<C-s>"] = actions.goto_file_selection_split,
"         ["<C-q>"] = actions.send_to_qflist,
"       },
"     }
"   }
" }
" EOF


nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>

" nnoremap <C-f> <cmd>Telescope find_files<cr>
nnoremap <C-g> <cmd>Telescope live_grep<cr>
nnoremap <space>b <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>