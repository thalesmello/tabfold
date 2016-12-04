function! tabfold#toggle()
  if foldclosed(line('.')) >= 0
    silent! normal zv
  else
    silent! normal za
  endif
endfunction

function! tabfold#move_forward_or_toggle_fold()
  let oldpos = getpos('.')
  execute "normal! 1\<c-i>"
  let newpos = getpos('.')
  if newpos == oldpos
    call tabfold#toggle()
  endif
endf
