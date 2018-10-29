function! _EscapeText_ocaml(text)
	let trimmed = substitute(a:text, '\_s\_t*$', '', '')
	return trimmed
endfunction
