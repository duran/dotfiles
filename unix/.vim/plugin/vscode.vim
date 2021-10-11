" 1. TODO: Check multiple cursor solution for vim (shift+alt+...)
xnoremap <leader>' x2i'<c-[>P
xnoremap <leader>" x2i"<c-[>P
xnoremap <leader>( xi()<c-[>P
xnoremap <leader>[ xi[]<c-[>P
xnoremap <leader>{ xi{}<c-[>P
xnoremap <leader>< xi<><c-[>P
" 2. TODO: IntelliSense: Ctrl+Space
" 3. Move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" 4. TODO: Comment block of code with Ctrl+/
" 5. TODO: Rename refactoring 
" 6. TODO: Formatting (again)
" 7. TODO: Folding (again)
" 8. TODO: Errors and warnings
" 9. TODO: Snippeds
" 10. TODO: Emmets VIM
" 11. TODO: Terminal (again) (ctrl+`)
" 12. TODO: Version control (ctrl+shift+G) (again)
" 13. TODO: Edit, build, test and debug
