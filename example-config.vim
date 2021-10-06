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
let g:colemak_dhm_automap = system("lsusb | grep -c 'ErgoDox'")

" Need to define these so mappings in downstream vimrc can map
let bind_to    = g:colemak_dhm_automap ? 'dhm' : 'original'
let g:left     = get(g:colemak_dhm_mappings.left, bind_to)
let g:right    = get(g:colemak_dhm_mappings.right, bind_to)
let g:down     = get(g:colemak_dhm_mappings.down, bind_to)
let g:up       = get(g:colemak_dhm_mappings.up, bind_to)
let g:next     = get(g:colemak_dhm_mappings.next, bind_to)
let g:previous = get(g:colemak_dhm_mappings.previous, bind_to)
let g:mark     = get(g:colemak_dhm_mappings.mark, bind_to)
