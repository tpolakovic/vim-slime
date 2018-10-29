function! _EscapeText_ocaml(text)
	let trimmed = substitute(a:text, '\_st*$', '', '')
	return [trimmed,"\n"]
endfunction
