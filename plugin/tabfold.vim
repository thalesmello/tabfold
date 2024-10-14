nnoremap <silent> <s-tab> :<c-U>call tabfold#toggle()<cr>

if has('gui_running') || get(g:, "tabfold_enforce_forward_or_toggle_fold", 0) == 0
  nnoremap <silent> <tab> :<c-u>call tabfold#toggle()<cr>
else
  nnoremap <silent> <tab> :<c-u>call tabfold#move_forward_or_toggle_fold()<cr>
endif
