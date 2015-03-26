if exists("g:mtmacro#DontShowHints") && g:mtmacro#DontShowHints==0
  finish
endif

if &cmdheight < 2
  setlocal cmdheight=2
endif

if exists("s:mtmhints")
  finish
endif
let s:mtmhints=1
let s:FunctionHints = {}

function! mtmacro#hints#DispHint(cmd) 
  let entry = s:FunctionHints[a:cmd]
  echoh hintHiRet 
  echon entry['return']
  echoh hintHi 
  echon " = "
  echon a:cmd
  echon "("
  echoh hintHiRet 
  echon entry['param']
  echoh hintHi 
  echon ")"
endfunction!

for entry in g:mtmacro#RollCompleteList
  if entry['kind'] == "f"
    for word in entry['word']
      let mapcmd = 'inorea ' . word . " " . word . '<c-o>:call mtmacro#hints#DispHint("' . word . '")<cr>'
      let hintEntry = {} 
      let hintEntry['param'] = entry['param']
      let hintEntry['return'] = entry['return']

      let s:FunctionHints[word] = hintEntry
      exe mapcmd 
    endfor
  endif
endfor

