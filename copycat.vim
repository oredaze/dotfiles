let g:airline#themes#copycat#palette = {}

function! airline#themes#copycat#refresh()
  let g:airline#themes#copycat#palette.accents = {
        \ 'red': airline#themes#get_highlight('Special'),
        \ }

  let s:N1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Statement', 'fg'], 'bold')
  let s:N2 = airline#themes#get_highlight2(['Folded', 'fg'], ['Folded', 'bg'], '')
  let s:N3 = airline#themes#get_highlight2(['String', 'fg'], ['LineNR', 'bg'], '')
  let s:Nmod = airline#themes#get_highlight2(['Special', 'fg'], ['LineNR', 'bg'], '')
  let g:airline#themes#copycat#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#copycat#palette.normal_modified = {
        \ 'airline_c': s:Nmod
        \ }

  let s:I1 = airline#themes#get_highlight2(['Normal', 'bg'], ['Constant', 'fg'], 'bold')
  let s:I2 = airline#themes#get_highlight2(['Constant', 'fg'], ['Folded', 'bg'])
  let s:I3 = airline#themes#get_highlight2(['Constant', 'fg'], ['LineNR', 'bg'])
  let g:airline#themes#copycat#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#copycat#palette.insert_modified = g:airline#themes#copycat#palette.normal_modified

  let s:R1 = airline#themes#get_highlight2(['Normal', 'bg'], ['PreProc', 'fg'], 'bold')
  let s:R2 = airline#themes#get_highlight2(['PreProc', 'fg'], ['Folded', 'bg'])
  let s:R3 = s:N3
  let g:airline#themes#copycat#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#copycat#palette.replace_modified = g:airline#themes#copycat#palette.normal_modified

  let s:V1 = airline#themes#get_highlight2(['Normal', 'fg'], ['Visual', 'bg'], 'bold')
  let s:V2 = airline#themes#get_highlight2(['Visual', 'fg'], ['Folded', 'bg'])
  let s:V3 = s:N3
  let g:airline#themes#copycat#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#copycat#palette.visual_modified = g:airline#themes#copycat#palette.normal_modified

  let s:A1 = airline#themes#get_highlight2(['LineNR', 'fg'], ['LineNR', 'bg'], 'bold')
  let s:A2 = airline#themes#get_highlight2(['Normal', 'bg'], ['Folded', 'bg'], 'bold')
  let s:A3 = airline#themes#get_highlight2(['Normal', 'bg'], ['Folded', 'bg'], 'bold')
  let g:airline#themes#copycat#palette.inactive = airline#themes#generate_color_map(s:A3, s:A2, s:A1)
  let g:airline#themes#copycat#palette.inactive_modified = {
        \ 'airline_c': s:A1
        \ }

  let s:T1 = airline#themes#get_highlight2(['String', 'fg'], ['Folded', 'bg'])
  let s:T2 = airline#themes#get_highlight2(['Normal', 'bg'], ['Statement', 'fg'], 'bold')
  let s:T3 = airline#themes#get_highlight2(['Folded', 'fg'], ['Folded', 'bg'])
  let s:T4 = airline#themes#get_highlight('LineNR')
  let s:T5 = airline#themes#get_highlight2(['Folded', 'fg'], ['Folded', 'bg'])
  let s:T6 = airline#themes#get_highlight2(['Normal', 'bg'], ['Statement', 'fg'], 'bold')
  let s:T7= airline#themes#get_highlight2(['Normal', 'bg'], ['Statement', 'fg'], 'bold')
  let s:T8 = airline#themes#get_highlight2(['Folded', 'fg'], ['Folded', 'bg'])
  let g:airline#themes#copycat#palette.tabline = {
      \ 'airline_tab':          s:T1,
      \ 'airline_tabsel':       s:T2,
      \ 'airline_tabtype':      s:T3,
      \ 'airline_tabfill':      s:T4,
      \ 'airline_tabhid':       s:T5,
      \ 'airline_tabmod':       s:T6,
      \ 'airline_tabmod_right': s:T7,
      \ 'airline_tab_right':    s:T8,
      \ }

  if !get(g:, 'loaded_ctrlp', 0)
      finish
  endif
  let s:P1 = airline#themes#get_highlight2(['Normal', 'fg'], ['LineNR', 'bg'], 'NONE')
  let s:P2 = airline#themes#get_highlight2(['Normal', 'fg'], ['Folded', 'bg'])
  let s:P3 = airline#themes#get_highlight2(['Normal', 'bg'], ['Type', 'fg'], 'bold')
  let g:airline#themes#copycat#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:P1, s:P2, s:P3)

endfunction

call airline#themes#copycat#refresh()
