[vim colemak DHm](vim-colemak-DHm)
===========

=======
# This is a **work in progress** fork, check back later. When this text is removed, it is ready for use.

## Simple setup
Define this in the vimrc runtime stream prior to plugin loading (plugins run after vimrc by default)
```vim
" Need to define prior to plugin load or include in plugin
" Defined here first so can get mappings for downstream vimrc
let g:colemak_dhm_mappings = {
\        'left':   {'dhm': 'm', 'original': 'h'},
\        'right':  {'dhm': 'i', 'original': 'l'},
\        'down':   {'dhm': 'n', 'original': 'j'},
\        'up':     {'dhm': 'e', 'original': 'k'},
\        'insert': {'dhm': 'l', 'original': 'i'},
\        'next':   {'dhm': 'h', 'original': 'n'},
\        'previous': {'dhm': 'H', 'original': 'N'},
\        'mark':   {'dhm': 'k', 'original': 'm'},
\        'top_screen': {'dhm': 'K', 'original': 'H'},
\        'join':    {'dhm': 'N', 'original': 'J'},
\        'eow':    {'dhm': 'j', 'original': 'e'},
\        'eoW':    {'dhm': 'J', 'original': 'E'},
\        'shift_i': {'dhm': 'I', 'original': '<nop>'}
\}

" Tells the plugin to map once it loads
" Using system command to check if specific colemak keyboard is plugged in
let g:colemak_dhm_automap = system("lsusb | grep -c 'ErgoDox'")

" Need to define these so mappings in downstream vimrc can map
let bind_to = g:colemak_dhm_automap ? 'dhm' : 'original'
let g:left  = get(g:colemak_dhm_mappings.left, bind_to)
let g:right  = get(g:colemak_dhm_mappings.right, bind_to)
let g:down  = get(g:colemak_dhm_mappings.down, bind_to)
let g:up  = get(g:colemak_dhm_mappings.up, bind_to)
```

Install
-------

1. Use [vim-plug](https://github.com/manning390/vim-plug).
2. Add to `.vimrc`: `Plug 'manning390/vim-colemak-DHm'`
3. Run `vim +PlugInstall`
4. You probably want to load vim-colemak last. Reload the plugin at the bottom of your Vim configuration.

    ```
    " Reload vim-colemak to remap any overridden keys
    silent! source "$HOME/.vim/bundle/vim-colemak/plugin/colemak-dhm.vim"
    ```

    *Note: You might be using `~/.vim/plugged`.*

