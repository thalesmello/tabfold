nnoremap <silent> <s-tab> :<c-U>call tabfold#toggle()<cr>

if has('gui_running')
  nnoremap <silent> <tab> :<c-u>call tabfold#toggle()<cr>
else
  nnoremap <silent> <tab> :<c-u>call tabfold#move_forward_or_toggle_fold()<cr>
endif
