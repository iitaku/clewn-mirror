" Mappings example for use with Clewn
" Maintainer:	<xdegaye at users dot sourceforge dot net>
" Last Change:	Mar 6 2006

let s:clewn_k = 1
nmap <F7> :call <SID>Toggle()<CR>

" Toggle between vim default and custom mappings
function! s:Toggle()
    if s:clewn_k
	let s:clewn_k = 0

	nmap <silent> <C-Z> <F21>z
	nmap <silent> B <F21>B
	nmap <silent> L <F21>L
	nmap <silent> A <F21>A
	nmap <silent> S <F21>S
	nmap <silent> I <F21>I
	nmap <silent> <C-N> <F21>n
	nmap <silent> X <F21>N
	nmap <silent> F <F21>F
	nmap <silent> R <F21>R
	nmap <silent> Q <F21>Q
	nmap <silent> C <F21>C
	nmap <silent> W <F21>W
	nmap <silent> <C-U> <F21>u
	nmap <silent> <C-D> <F21>d

	" set/clear bp at current line
	nmap <silent> <C-B> <F21>b
	nmap <silent> <C-E> <F21>e

	" set/clear bp at asm address shown by mouse position
	nmap <silent> <C-K> <F21>k
	nmap <silent> <C-H> <F21>h

	" print value at mouse position
	nmap <silent> <C-P> <F21>p

	" print value referenced by word at mouse position
	nmap <silent> <C-X> <F21>a

	" add selected variable at mouse position to variables
	nnoremap <silent> <C-J> <F21>j

	echohl ErrorMsg
	echo "clewn keys mapped"
	echohl None

    " Restore vim defaults
    else
	let s:clewn_k = 1

	nunmap <C-Z>
	nunmap B
	nunmap L
	nunmap A
	nunmap S
	nunmap I
	nunmap <C-N>
	nunmap X
	nunmap F
	nunmap R
	nunmap Q
	nunmap C
	nunmap W
	nunmap <C-U>
	nunmap <C-D>

	nunmap <C-B>
	nunmap <C-E>
	nunmap <C-K>
	nunmap <C-H>
	nunmap <C-P>
	nunmap <C-X>
	nunmap <C-J>

	echohl ErrorMsg
	echo "clewn keys reset to default"
	echohl None
    endif
endfunction

" map clewn keys
call s:Toggle()

