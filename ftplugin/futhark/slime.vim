function! _EscapeText_ocaml(text)
	let trimmed = substitute(a:text, '\_s*$', '', '')
	return [trimmed,"\n"]
endfunction
