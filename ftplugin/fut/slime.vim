function! Lines(text)
    return split(a:text, "\n")
endfunction

function! Unlines(lines)
    return join(a:lines, "\n") . "\n"
endfunction

function! Is_comment(line)
    return (match(a:line, "^[ \t]*--.*") >= 0)
endfunction

function! Remove_line_comments(lines)
    return filter(copy(a:lines), "!Is_comment(v:val)")
endfunction

function! _EscapeText_fut(text)
    let l:lines = Lines(a:text)
    let l:lines = Remove_line_comments(l:lines)
    let l:outraw = Unlines(l:lines)
    let l:outtrimmed = substitute(l:outraw, "\_s*$", "", "")
    return l:outtrimmed
endfunction
