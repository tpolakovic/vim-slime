function! _EscapeText_ocaml(text)
	let trimmed = substitute(a:text, '\_s*$\|\_^\(--\)', '', '')
	return trimmed
endfunction
