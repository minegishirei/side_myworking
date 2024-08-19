
function! Spectre(search_term, replace_term)
  " Validate arguments
  if a:search_term == '' || a:replace_term == ''
    echo "Usage: :Spectre <search_term> <replace_term>"
    return
  endif

  " Set search term and replace term
  let l:search = a:search_term
  let l:replace = a:replace_term

  " Open quickfix list with search results
  execute 'vimgrep /' . l:search . '/j %'
  copen

  " Perform replace in all files listed in quickfix
  execute 'cfdo %s/' . l:search . '/' . l:replace . '/gc'
endfunction

" Define custom command
command! -nargs=2 Spectre call Spectre(<q-args>)
