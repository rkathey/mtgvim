" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  "finish
endif
let b:did_ftplugin = 1

set syntax=mtmacro

" HTML Comments
noremap <buffer> <LocalLeader>hc i<!--  --><ESC>bhi
inoremap <buffer> <LocalLeader>hc <!--  --><ESC>bhi


" Map Tool inline rolls

" Input command
noremap <buffer> <LocalLeader>i i[h: res = input()]<ESC>ba
inoremap <buffer> <LocalLeader>i [h: res = input()]<ESC>ba
noremap <buffer> <LocalLeader>ia i[h: res = input()]<CR>[h: abort(res)]<ESC>2?(<CR>a
inoremap <buffer> <LocalLeader>ia [h: res = input()]<CR>[h: abort(res)]<ESC>2?(<CR>a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rolls
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Count Roll
noremap <buffer> <LocalLeader>[c i[c():]<ESC>ba
inoremap <buffer> <LocalLeader>[c [c():]<ESC>ba

" Hidden Roll
noremap <buffer> <LocalLeader>[h i[h:]<ESC>ba
inoremap <buffer> <LocalLeader>[h [h:]<ESC>ba

" Plain Rolls
noremap <buffer> <LocalLeader>[r i[p:]<ESC>ba
inoremap <buffer> <LocalLeader>[r [p:]<ESC>ba

" Expanded Rolls
noremap <buffer> <LocalLeader>[e i[e:]<ESC>ba
inoremap <buffer> <LocalLeader>[e [e:]<ESC>ba

" While Rolls
noremap <buffer> <LocalLeader>[w i[while():]<ESC>ba
inoremap <buffer> <LocalLeader>[w [while():]<ESC>ba

" For Rolls
noremap <buffer> <LocalLeader>[f i[for():]<ESC>ba
inoremap <buffer> <LocalLeader>[f [for():]<ESC>ba

" Foreach Rolls
noremap <buffer> <LocalLeader>[fe i[foreach():]<ESC>ba
inoremap <buffer> <LocalLeader>[fe [foreach():]<ESC>ba

" If Rolls
noremap <buffer> <LocalLeader>[i i[if():]<ESC>ba
inoremap <buffer> <LocalLeader>[i [if():]<ESC>ba

" Tooltip Rolls
noremap <buffer> <LocalLeader>[t i[t():]<ESC>ba
inoremap <buffer> <LocalLeader>[t [t():]<ESC>ba

" Unformatted Rolls
noremap <buffer> <LocalLeader>[u i[u:]<ESC>ba
inoremap <buffer> <LocalLeader>[u [u:]<ESC>ba

" Macro Rolls
noremap <buffer> <LocalLeader>[m i[macro():]<ESC>ba
inoremap <buffer> <LocalLeader>[m [macro():]<ESC>ba


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hidden Rolls
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hidden Count Roll
noremap <buffer> <LocalLeader>[hc i[h,c():]<ESC>ba
inoremap <buffer> <LocalLeader>[hc [h,c():]<ESC>ba


" Hidden While Rolls
noremap <buffer> <LocalLeader>[hw i[h,while():]<ESC>ba
inoremap <buffer> <LocalLeader>[hw [h,while():]<ESC>ba

" Hidden For Rolls
noremap <buffer> <LocalLeader>[hf i[h,for():]<ESC>ba
inoremap <buffer> <LocalLeader>[hf [h,for():]<ESC>ba

" Hidden Foreach Rolls
noremap <buffer> <LocalLeader>[hfe i[h,foreach():]<ESC>ba
inoremap <buffer> <LocalLeader>[hfe [h,foreach():]<ESC>ba

" Hidden If Rolls
noremap <buffer> <LocalLeader>[hi i[h,if():]<ESC>ba
inoremap <buffer> <LocalLeader>[hi [h,if():]<ESC>ba

" Hidden macro Rolls
noremap <buffer> <LocalLeader>[mi i[h,macro():]<ESC>ba
inoremap <buffer> <LocalLeader>[mi [h,macro():]<ESC>ba

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code Rolls
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Code rolls
noremap <buffer> <LocalLeader>[` i[code:]<ESC>ba
inoremap <buffer> <LocalLeader>[` [code: ``]<ESC>ba

" Code rolls with count
noremap <buffer> <LocalLeader>[c` i[c(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[c` [c(), code: ``]<ESC>4ba

" Code rolls with for
noremap <buffer> <LocalLeader>[f` i[for(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[f` [for(), code: ``]<ESC>4ba

" Code rolls with foreach
noremap <buffer> <LocalLeader>[fe` i[foreach(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[fe` [foreach(), code: ``]<ESC>4ba

" Code rolls with while
noremap <buffer> <LocalLeader>[w` i[while(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[w` [while(), code: ``]<ESC>4ba

" Code rolls with if
noremap <buffer> <LocalLeader>[i` i[if(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[i` [if(), code: ``]<ESC>4ba

" Code rolls with macro
noremap <buffer> <LocalLeader>[m` i[macro(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[m` [macro(), code: ``]<ESC>4ba

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hidden Code Rolls
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Hidden Code rolls with count
noremap <buffer> <LocalLeader>[hc` i[h,c(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[hc` [h,c(), code: ``]<ESC>4ba

" Hidden Code rolls with for
noremap <buffer> <LocalLeader>[hf` i[h,for(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[hf` [h,for(), code: ``]<ESC>4ba

" Hidden Code rolls with foreach
noremap <buffer> <LocalLeader>[hfe` i[h,foreach(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[hfe` [h,foreach(), code: ``]<ESC>4ba

" Hidden Code rolls with while
noremap <buffer> <LocalLeader>[hw` i[h,while(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[hw` [h,while(), code: ``]<ESC>4ba

" Hidden Code rolls with if
noremap <buffer> <LocalLeader>[hi` i[h,if(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[hi` [h,if(), code: ``]<ESC>4ba


" Hidden Code rolls with macro
noremap <buffer> <LocalLeader>[mi` i[h,macro(), code:]<ESC>4ba
inoremap <buffer> <LocalLeader>[mi` [h,macro(), code: ``]<ESC>4ba

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Functions
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Initiative
inoremap <buffer> <LocalLeader>ati addToInitiative()
inoremap <buffer> <LocalLeader>aati addAllToInitiative()
inoremap <buffer> <LocalLeader>aapti addAllPCsToInitiative()
inoremap <buffer> <LocalLeader>aanti addAllNPCsToInitiative()
inoremap <buffer> <LocalLeader>gci getCurrentInitiative()
inoremap <buffer> <LocalLeader>sci setCurrentInitiative()
inoremap <buffer> <LocalLeader>gir getInitiativeRound()
inoremap <buffer> <LocalLeader>sir setInitiativeRound()
inoremap <buffer> <LocalLeader>soi sortInitiative()
inoremap <buffer> <LocalLeader>ni nextInitiative()
inoremap <buffer> <LocalLeader>is initiativeSize()
inoremap <buffer> <LocalLeader>rafi removeAllFromInitiative()
inoremap <buffer> <LocalLeader>rapfi removeAllPCsFromInitaitive()
inoremap <buffer> <LocalLeader>ranfi removeAllNPCsFromInitiative()
inoremap <buffer> <LocalLeader>sei setInitiaitive()<Left>
inoremap <buffer> <LocalLeader>gi getInitiative()
inoremap <buffer> <LocalLeader>sih setInitiativeHold()<Left>
inoremap <buffer> <LocalLeader>gih getInitaitiveHold()


" String List Functions
inoremap <buffer> <LocalLeader>la listAppend()<Left>
inoremap <buffer> <LocalLeader>lg listGet()<Left>
inoremap <buffer> <LocalLeader>ld listDelete()<Left>
inoremap <buffer> <LocalLeader>lc listCount()<Left>
inoremap <buffer> <LocalLeader>lr listReplace()<Left>
inoremap <buffer> <LocalLeader>li listInsert()<Left>
inoremap <buffer> <LocalLeader>lf listFind()<Left>

" String Properties Functions
inoremap <buffer> <LocalLeader>gsp getStrProp()<Left>
inoremap <buffer> <LocalLeader>ssp setStrProp()<Left>
inoremap <buffer> <LocalLeader>dsp deleteStrProp()<Left>
inoremap <buffer> <LocalLeader>vfsp varsFromStrProp()<Left>
inoremap <buffer> <LocalLeader>csp countStrProp()<Left>
inoremap <buffer> <LocalLeader>iksp indexKeyStrProp()<Left>
inoremap <buffer> <LocalLeader>ivsp indexValueStrProp()<Left>

" Bar Functions
inoremap <buffer> <LocalLeader>gb getBar()<Left>
inoremap <buffer> <LocalLeader>sb setBar()<Left>

" Token Names and Labels
inoremap <buffer> <LocalLeader>gn getName()
inoremap <buffer> <LocalLeader>sn setName()<Left>
inoremap <buffer> <LocalLeader>gl getLabel()
inoremap <buffer> <LocalLeader>sl setLabel()<Left>
inoremap <buffer> <LocalLeader>ggn getGMName()
inoremap <buffer> <LocalLeader>sgn setGMName()<Left>

" Token States Functions
inoremap <buffer> <LocalLeader>gsi getStateImage()<Left>
inoremap <buffer> <LocalLeader>gst getState()<Left>
inoremap <buffer> <LocalLeader>sst setState()<Left>
inoremap <buffer> <LocalLeader>sas setAllStates()

" Tables Functions
inoremap <buffer> <LocalLeader>tb table()<Left>
inoremap <buffer> <LocalLeader>ti tableImage()<Left>

" Token Visibility Functions
inoremap <buffer> <LocalLeader>sv setVisible()<Left>
inoremap <buffer> <LocalLeader>gv getVisible()<Left>

" Token Halo Functions
inoremap <buffer> <LocalLeader>gh getHalo()
inoremap <buffer> <LocalLeader>sh setHalo()<Left>

" Token Image Functions
inoremap <buffer> <LocalLeader>gti getTokenImage()


" String Input Values
inoremap <buffer> <LocalLeader>ep " ; "
inoremap <buffer> <LocalLeader>ist \|TEXT
inoremap <buffer> <LocalLeader>isl \|LIST
inoremap <buffer> <LocalLeader>isc \|CHECK
inoremap <buffer> <LocalLeader>isr \|RADIO
inoremap <buffer> <LocalLeader>isl \|LABEL
inoremap <buffer> <LocalLeader>isp \|PROPS
inoremap <buffer> <LocalLeader>isw \|WIDTH=
inoremap <buffer> <LocalLeader>iss \|SELECT=
inoremap <buffer> <LocalLeader>isv \|VALUE=
inoremap <buffer> <LocalLeader>ist \|TEXT=TRUE
inoremap <buffer> <LocalLeader>istf \|TEXT=FALSE
inoremap <buffer> <LocalLeader>isi \|ICON=TRUE
inoremap <buffer> <LocalLeader>isif \|ICON=FALSE
inoremap <buffer> <LocalLeader>isis \|ICONSIZE=
inoremap <buffer> <LocalLeader>isoh \|ORIENT=H
inoremap <buffer> <LocalLeader>isov \|ORIENT=V
inoremap <buffer> <LocalLeader>issv \|SETVARS=TRUE
inoremap <buffer> <LocalLeader>issvf \|SETVARS=FALSE

unlet! s:macroCompleteList 
let s:macroCompleteList = []

function! mtmacro#GetCompleteList(lineNo, colNo)
  let synNo = synID(a:lineNo, a:colNo, 0)
  let lineText = getline('.')
  if synNo == 0 
    if col(".") > 0
      if lineText[a:colNo-1] != ']'
        let synNo = synID(a:lineNo, a:colNo-1, 0)
      endif
    endif
  endif
  let synName = synIDattr(synNo, "name")
  if synName =~ "^parserString.*"
    return g:mtmacro#RollStringCompleteList
  elseif synName =~ "^parserSpecial.*"
    return g:mtmacro#RollStringCompleteList
  elseif synName =~ "^parseCmd.*"
    return g:mtmacro#RollCompleteList
  elseif synName =~ "^parser.*"
    return g:mtmacro#RollCompleteList
  elseif synName =~ "^be.*"
    " Check to see if we are in a bracket
    let line = getline('.')
    let idx = col('.')
    while idx > 0
      let idx -= 1
      let c = line[idx-1]
      if c == '('
        return g:mtmacro#RollCompleteList
      elseif c == '['
        return []
      endif
    endwhile
    return[]
  else
    return []
  endif
endfunction

" Code completion function for MTMacro functions
function! mtmacro#CompleteForFunction(word, entry) 
  let newEntry = {}
  if exists("g:mtmacro#InclParam") && g:mtmacro#InclParam == 1
    let newEntry['word'] = a:word
    if exists("a:entry['gm']") && a:entry['gm'] != 0 
      let newEntry['menu'] = "(GM)"
    else
      let newEntry['menu'] = ""
    endif
    let newEntry['menu'] = newEntry['menu'] . a:entry['menu']
    if a:entry['kind'] == 'f'
      let newEntry['word'] = a:word. "(".a:entry['param'].")"         
    endif
  else
    let newEntry['word'] = a:word 
    if exists("a:entry['gm']") && a:entry['gm'] != 0 
      let newEntry['menu'] = "(GM)"
    else
      let newEntry['menu'] = ""
    endif
    let newEntry['menu'] = newEntry['menu'] .  a:word."(".a:entry['param']."): ". a:entry['menu']
    if a:entry['kind'] == 'f'
      let newEntry['word'] = newEntry['word'] . "()"         
    endif
  endif
  
  let newEntry['kind'] = a:entry['kind']
  	    if !exists("g:mtmacro#DontShowScratch") || g:mtmacro#DontShowScratch==0
    " Build the scratch window
    let newEntry['info'] = a:word 
    if a:entry['kind'] == 'f' 
      let newEntry['info'] = newEntry['info'] ."(".a:entry['param'].")\n"
    else
      let newEntry['info'] = newEntry['info'] . "\n"
    endif
    if exists("a:entry['gm']") && a:entry['gm'] != 0 
      let newEntry['info'] = newEntry['info'] . "GM Only\n"
    endif
    let newEntry['info'] = newEntry['info'] . substitute(a:entry['info'],"_function_", a:word, "g")
  
    " Build the aliases for the scratch window
    if len(a:entry['word']) > 1
      let newEntry['info'] = newEntry['info'] . "\nAliases: "
      let firstTime = 1
      for als in a:entry['word'] 
        if a:word == als
          continue
        endif
        if firstTime == 0
          let newEntry['info'] = newEntry['info'] .', '
        endif
        let newEntry['info'] = newEntry['info'] . als
        if a:entry['kind'] == 'f' 
          let newEntry['info'] = newEntry['info'] . "()"
        else 
          let newEntry['info'] = newEntry['info'] 
        endif
        let firstTime = 0
      endfor
    endif
  
    if exists("a:entry['eg']") && len(a:entry['eg']) > 0
      let newEntry['info'] = newEntry['info'] . "\nExamples:\n"
      for eg in a:entry['eg']
        let newEntry['info'] = newEntry['info'] . "\t" . substitute(eg, "_function_", a:word, "g")
      endfor
    endif
  endif
  return newEntry
endfunction


" Code completion function for MTMacro String special variables
function! mtmacro#CompleteForString(word, entry)
  let newEntry = {}
  let newEntry['word'] = a:word
  let newEntry['menu'] = a:entry['menu']
  if exists("g:mtmacro#InclParam") && g:mtmacro#InclParam == 1
    let newEntry['word'] = newEntry['word'] . newEntry['param'] 
  else
    if len(a:entry['param']) > 0
      let newEntry['menu'] = a:word . a:entry['param'] . ": " . newEntry['menu']
    endif
  endif
  let newEntry['kind'] = 'd'
  let newEntry['info'] = a:entry['info']
  return newEntry
endfunction

" Code completion function.
function! mtmacro#CompleteFunction(findstart, base) 
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let idx = col('.')
    while idx > 0
      let idx -= 1
      let c = line[idx-1]
      if c =~ '\w'
        continue
      else
        break
      endif
    endwhile
    return idx
  else
    let list = mtmacro#GetCompleteList(line("."), col("."))
    let complete = []
    for entry in list 
      for word in entry['word']
        if word !~ '^' . a:base
            continue
        endif
        if (entry['kind'] == 'f') " Functions
          let newEntry = mtmacro#CompleteForFunction(word, entry)
        elseif (entry['kind'] == 'm') " Functions
          let newEntry = mtmacro#CompleteForFunction(word, entry)
        elseif (entry['kind'] == 's') " String special values
          let newEntry = mtmacro#CompleteForString(word, entry)
        else
          continue
        endif
        call add(complete, newEntry)
      endfor
    endfor
    return complete
  endif
endfunction

set completefunc=mtmacro#CompleteFunction
set omnifunc=mtmacro#CompleteFunction

" Super Tab Completion
if exists("g:SuperTabDefaultCompletionType")
  call SuperTabSetCompletionType("<C-X><C-U>")  
endif

" vim: set et ts=4
