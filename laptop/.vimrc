  syntax on
  "filetype on
  "au BufNewFile,BufRead *.cy set filetype=python
"
filetype plugin on

"       autowrite: Automatically save modifications to files
"       when you use critical (rxternal) commands.
  set   autowrite
"
  set   nobackup
"
"       backspace:  '2' is much smarter. -> "help backspace"
  set   backspace=2
"
"       background:  Are we using a "light" or "dark" background?
  set   background=light
"
"       compatible:  Let Vim behave like Vi?
  set   nocompatible
"
"       dictionary: english words first
  set   dictionary=/usr/dict/words
"
"       esckeys:    allow usage of cursor keys within insert mode
"       You will find this useful when working, eg, on SunOS.
  set   esckeys
"
"       expandtab:   use spaces instead of tabs
  set   expandtab
"
"       incsearch: turn on incremental search
  set   incsearch
"
"       *** indenting ****
"       cindent
"       smartindent
"       autoindent
  set   autoindent
"
"       laststatus:  show status line?  Yes, always!
"       laststatus:  Even for only one buffer.
  set   laststatus=2
"
"       ruler:       show cursor position?  Yep!
  set   ruler
"
"       shiftwidth:  Number of spaces to use for each
"                    insertion of (auto)indent.
  set   shiftwidth=2
"
"       showcmd:     Show current uncompleted command?  Absolutely!
  set   showcmd
"
"       showmatch:   Show the matching bracket for the last ')'?
  set   showmatch
"
"       showmode:    Show the current mode?  YEEEEEEEEESSSSSSSSSSS!
  set   showmode
"
"       tabstop
  set   tabstop=2
"
"       textmode:    no - I am using Vim on UNIX!
  set notextmode
"
"       visualbell:
  set   visualbell
"
"       Maki GUI File Open use current directory
  set   browsedir=buffer
"
" statusline
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %{&ff} file type [DOS]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
"set statusline=%<\ %n:%f\ %m%r%y[%{&ff}]%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
"
" Map function keys to turn on/off spell checking
"
" You can move to the next and previous misspelled words by typing ]s and [s
" respectively, in normal mode. If the cursor is on a misspelled word, z=
" shows suggestions and zg adds the word to the dictionary. zug performs an
" undo to the dictionary addition.
  map <F5> <Esc>:setlocal spell spelllang=en<CR>
  map <F6> <Esc>:setlocal nospell<CR>
"
  map <F9> <Esc>:NERDTreeToggle<CR>
  map <F10> <Esc>:TlistToggle<CR>
"
  " Highlight end of line whitespace.
  highlight WhitespaceEOL ctermbg=red guibg=red
  match WhitespaceEOL /\s\+$/

" ===================================================================
" ABbreviations
" ===================================================================
  iab shpy     #! /usr/bin/python
"     Yruler : A ruler.
  iab Yruler 1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
"
" Correcting those typos.
" See also:  http://www.igd.fhg.de/~zach/programs/acl/
  iab alisa     alias
  iab shoudl    should
  iab seperate  separate
  iab teh       the

  " folding options
  set foldmethod=indent
  set foldlevel=99

  " taskList tokens
  " pressing <leader>t (\t) to invoke taskList
  let g:tlTokenList = ['TODO', 'FIXME', 'NOTE', 'NOTES', '\<BUG\>']

  " SuperTab options
  au FileType python set omnifunc=pythoncomplete#Complete
  let g:SuperTabDefaultCompletionType = "context"

  " pydoc options
  " Pressing "K" takes you to the documentation for the word under the cursor.
  let g:pydoc_cmd = "python c:/prog/Python27/Lib/pydoc.py"
  set completeopt=menuone,longest,preview

  " Pyflakes options
  let g:pyflakes_use_quickfix = 0

  " More syntax highlighting.
  let python_highlight_all = 1

  " Smart indenting
  "set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
  "set autoindent cinwords=if,elif,else,for,while,try,except,finally,def,class


