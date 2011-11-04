" Language:    Arduino
" Maintainer:  Chris Blazek <chris.blazek@gmail.com>
" URL:         http://github.com/kingbin/vim-arduino
" License:     GPL V3

if exists("b:vim_arduino")
  finish
endif

let b:vim_arduino = 1

set autowrite
set switchbuf=usetab

imap <F9> <ESC>:!make<CR>
map <F9> :!make<CR>
map <F2> GoDate: <Esc>:read !date<CR>

setlocal errorformat^=\%-G../libraries\%.\%#,\%-G../../libraries\%.\%#,%-G/Applications/Development/Arduino.app/Contents/Resources/Java\%.\%#


" Very simple 
function! s:ArduinoMakeFile()
  
  :tabe Makefile
  :r ~/.vim/bundle/vim-arduino/templates/Makefile
  :w!

endfunction


command! -bang -bar ArduinoMakeFile call s:ArduinoMakeFile()
command! -bang -bar -nargs=* ArduinoMake :!make <args>
