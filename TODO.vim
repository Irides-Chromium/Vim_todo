autocmd BufRead *TODO* call TODO()
function TODO()
    let date = system("date +%a")
    if date == "Mon\n"
        syn match TODOdate /Mon/ contained
    elseif date == "Tue\n"
        syn match TODOdate /Tue/ contained
    elseif date == "Wed\n"
        syn match TODOdate /Wed/ contained
    elseif date == "Thu\n"
        syn match TODOdate /Thu/ contained
    elseif date == "Fri\n"
        syn match TODOdate /Fri/ contained
    elseif date == "Sat\n"
        syn match TODOdate /Sat/ contained
    elseif date == "Sun\n"
        syn match TODOdate /Sun/ contained
    endif

    syntax match TODOdone /.*\[x\].*/ contains=TODOdate
    syntax match TODOundone /.*\[ \].*/ contains=TODOdate

    hi link TODOdate Label
    hi link TODOdone Type
    hi link TODOundone VimWarn
endfunction
