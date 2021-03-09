" Description {{{
"   Refer to ../README.markdown for keymap explanations.
" }}}
" Require Vim >=7.0 {{{
    if v:version < 700 | echohl WarningMsg | echo "colemak-dhm.vim: You need Vim version 7.0 or later." | echohl None | finish | endif
" }}}
    " insert
    nnoremap u i

    " undo
    nnoremap l u

    " right hand nav
    " left
    nnoremap m h
    vnoremap m h
    " down
    nnoremap n j
    vnoremap n j
    " up
    nnoremap e k
    vnoremap e k
    " right
    nnoremap i l
    vnoremap i l

    " next
    nnoremap h n
    nnoremap H N

    " mark
    nnoremap k m
    nnoremap K M

    " shift+i does nothing (now movement)
    nnoremap I <nop>
