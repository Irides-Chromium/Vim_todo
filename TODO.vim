autocmd BufRead *TODO* call TODO()
function TODO()
    let date = system("date +%a")
    if date == "Mon\n"
        syn match TODOtoday /Mon/ contained
    elseif date == "Tue\n"
        syn match TODOtoday /Tue/ contained
    elseif date == "Wed\n"
        syn match TODOtoday /Wed/ contained
    elseif date == "Thu\n"
        syn match TODOtoday /Thu/ contained
    elseif date == "Fri\n"
        syn match TODOtoday /Fri/ contained
    elseif date == "Sat\n"
        syn match TODOtoday /Sat/ contained
    elseif date == "Sun\n"
        syn match TODOtoday /Sun/ contained
    endif
    syntax match TODOtoday /Everyday/ contained
    syntax match TODOdone /.*\[x\].*/ contains=TODOtoday
    syntax match TODOundone /.*\[ \].*/ contains=TODOtoday

    hi link TODOtoday Label
    hi link TODOdone Type
    hi link TODOundone VimWarn
endfunction
