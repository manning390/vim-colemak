" Description {{{
"   Refer to ../README.markdown for keymap explanations.
" }}}
" Require Vim >=7.0 {{{
    if v:version < 700 | echohl WarningMsg | echo "colemak-dhm.vim: You need Vim version 7.0 or later." | echohl None | finish | endif
" }}}

let g:colemak_dhm_visual = [
\   'left',
\   'right',
\   'down',
\   'up',
\]

let g:colemak_mappings_on = 0

function! MapDHM()
    let g:colemak_mappings_on = 1
    call ColemakBidirectionalMap('dhm', 'original')
endfunction

function! UnMapDHM()
    let g:colemak_mappings_on = 0
    call ColemakBidirectionalMap('original', 'dhm')
endfunction

function! ColemakBidirectionalMap(to, from)
    for [key, value] in items(g:colemak_dhm_mappings)
        execute 'nnoremap '. value[a:to] . ' ' . value[a:from]
    endfor
    for key in g:colemak_dhm_visual
        execute 'vnoremap ' . g:colemak_dhm_mappings[key][a:to] . ' ' . g:colemak_dhm_mappings[key][a:from]
    endfor
    let g:left  = get(g:colemak_dhm_mappings.left, a:to)
    let g:right  = get(g:colemak_dhm_mappings.right, a:to)
    let g:down  = get(g:colemak_dhm_mappings.down, a:to)
    let g:up  = get(g:colemak_dhm_mappings.up, a:to)
endfunction

if g:colemak_dhm_automap
    :silent! call MapDHM()
endif

