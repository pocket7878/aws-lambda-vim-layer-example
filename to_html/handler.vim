function! Method(event, context)
  let content = a:event.content
  enew!
  put =content
  1delete _
  execute 'syntax on'
  execute 'set ft='.a:event.filetype
  execute 'colorscheme '.a:event.colorscheme
  runtime syntax/2html.vim
  execute bufwinnr(bufnr('Untitled.xhtml'))'.wincmd w'
  let line_ending = "\n"
  let text = join(getline(1, '$'), line_ending).line_ending
  q!
  return text
endfunction
