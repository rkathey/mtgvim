" Vim syntax file
" Language:	MapTools Macros
" Maintainer:	Craig Wisniewski
" Last Change:	2008 Sep 20

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
"if version < 600
  syntax clear
"elseif exists("b:current_syntax")
  "finish
"endif

:runtime! syntax/html.vim


if !exists("main_syntax")
  let main_syntax = 'html'
endif

setlocal iskeyword+=.

" Highlight rolls in html comments
syntax region htmlCommentPart  contained start=+--+      end=+--\s*+  contains=@htmlPreProc,parserRoll,parseCmd
" Highlight rolls in html strings
syntax region  htmlString   contained start=+"+ end=+"+ contains=htmlSpecialChar,javaScriptExpression,@htmlPreproc,parserRoll,parseCmd
syntax region  htmlString   contained start=+'+ end=+'+ contains=htmlSpecialChar,javaScriptExpression,@htmlPreproc,parserRoll,parseCmd


" MapTool slash commands
"syntax keyword mtCom addtokenstate tsa alias clear clr clearaliases
"syntax keyword mtCom color cc emit e emote me gm togm goto g
"syntax keyword mtCom help h impersonate im loadaliases loadtokenstates
"syntax keyword mtCom tsl ooc reply rep roll r rollgm rgm
"syntax keyword mtCom rollme rme rollsecret rsec savealiases savetokenstates
"syntax keyword mtCom tss say s self settokenproperty stp settokenstate
"syntax keyword mtCom sts table tbl tmacro tm tsay ts whisper w

" Builtin parser functions
syntax keyword parserFunc abs absolutevalue add sum concat set contained
syntax keyword parserFunc bitwiseand band bitwisenot bnot contained
syntax keyword parserFunc bitwiseor bor bitwisexor bxor contained
syntax keyword parserFunc ceil ceiling divide eval floor contained
syntax keyword parserFunc hex hypot hypotenuse ln log log10 max contained
syntax keyword parserFunc mean avg average median min multiply contained
syntax keyword parserFunc sqr square power factor pow round sqrt contained
syntax keyword parserFunc squareroot subtract contained

" MapTool Parser functions
syntax keyword parserFunc abort addAllToInitiative contained 
syntax keyword parserFunc addAllPCsToInitiative contained
syntax keyword parserFunc addAllNPCsToInitiative getcurrentInitiative contained
syntax keyword parserFunc setCurrentInitiative getInitiativeRound contained
syntax keyword parserFunc setInitiativeRound tbl table tblImage contained
syntax keyword parserFunc tableImage nextInitiative sortInitiative contained
syntax keyword parserFunc intiativeSize removeAllFromInitiative contained
syntax keyword parserFunc removeAllPCsFromInitiative contained
syntax keyword parserFunc removeAllNPCsFromInitiative getStateImage contained
syntax keyword parserFunc listGet listDelete listCount listFind contained
syntax keyword parserFunc listAppend listInsert listReplace contained
syntax keyword parserFunc getStrProp setStrProp deleteStrProp varsFromStrProp contained
syntax keyword parserFunc countStrProp indexKeyStrProp indexValueStrProp contained
syntax keyword parserFunc addToInitiative getBar setBar getGMName setGMName contained
syntax keyword parserFunc getHalo setHalo getTokenImage setInitiative contained
syntax keyword parserFunc getInitiative setInitiativeHold getInitiativeHold contained
syntax keyword parserFunc getLabel setLabel getName setName contained 
syntax keyword parserFunc removeFromInitiative getState setState setAllStates contained
syntax keyword parserFunc setVisible getVisible input isBarVisible contained
syntax keyword parserFunc setBarVisible if contained

" Numeric Constants
syn match parserConst "\$[0-9a-fA-F]\+\>" contained
syn match parserConst "\<[0-9][0-9a-fA-F]*H\>" contained
syn match parserConst "@[0-7]\+\>" contained
syn match parserConst "\<[0-7]\+[QO]\>" contained
syn match parserConst "%[01]\+\>" contained
syn match parserConst "\<[01]\+B\>" contained
syn match parserConst "\<[0-9]\+D\=\>" contained
syn match floatE "_*E_*" contained
syn match parserfloatExponent "_*E_*[-+]\=[0-9]\+" contained contains=floatE
syn match parserfloatNumber "[-+]\=[0-9]\+_*E_*[-+]\=[0-9]\+" contains=parserfloatExponent
syn match parserfloatNumber "[-+]\=[0-9]\+\.[0-9]\+\(E[-+]\=[0-9]\+\)\=" contains=parserfloatExponent


" Parser Constants
syntax keyword parserConst true false contained
syntax match parserSpecialVar /bar\./ contained
syntax match parserSpecialVar /init\.current/ contained
syntax match parserSpecialVar /init\.round/ contained
syntax match parserSpecialVar /state\./ contained
syntax match parserSpecialVar /token\.gm_name/ contained
syntax match parserSpecialVar /token\.halo/ contained
syntax match parserSpecialVar /token\.init/ contained
syntax match parserSpecialVar /token\.initHold/ contained
syntax match parserSpecialVar /token\.label/ contained
syntax match parserSpecialVar /token\.name/ contained
syntax match parserSpecialVar /token\.visible/ contained

syntax match parserIdent /\<\a\(\a\|\d\|_\)*\>/ contained

" Special string values
syntax match propSep /;/ contained
syntax match listSep /;/ contained
syntax match inputSep /|/ contained
syntax keyword inputText TEXT contained
syntax keyword inputList LIST contained
syntax keyword inputCheck CHECK contained
syntax keyword inputRadio RADIO contained
syntax keyword inputLabel LABEL contained
syntax keyword inputProps PROPS contained
syntax match inputWidth /WIDTH\s*=\s*\d\+/ contained
syntax match inputSelect /SELECT\s*=\s*\d\+/ contained
syntax match inputValue /VALUE\s*=\s*\S\+/ contained
syntax match inputText /TEXT\s*=\s*\(FALSE\|TRUE\)/ contained
syntax match inputIcon /ICON\s*=\s*\(FALSE\|TRUE\)/ contained
syntax match inputIconSize /ICONSIZE\s*=\s*\d\+/ contained
syntax match inputOrient /ORIENT\s*=\s*[HV]/ contained
syntax match inputSetVars /SETVARS\s*=\s*\(FALSE\|TRUE\)/ contained

syntax match macroLoc /\c[^"']\+@token/ contained
syntax match macroLoc /\c[^"']\+@campaign/ contained
syntax match macroLoc /\c[^"']\+@global/ contained
syntax match macroLoc /\c[^"']\+@lib:[^"']\+/ contained
syntax match macroLoc /\c[^"']\+@this/ contained

"syntax cluster macroLoc add=tokenMacro,campaignMacro,globalMacro,libMacro,thisMacro

syntax cluster stringSpecial add=propSep,listSep,inputSep,inputText,inputList,inputCheck,inputRadio,inputLabel,inputProps,inputWidth,inputSelect,inputValue,inputText,inputIcon,inputIconSize,inputOrient,inputSetVars,macroLoc

" Parser strings
"syntax region parserString start=/'/ skip=/\\'/ end=/'/ contained contains=propSep,listSep
"syntax region parserString start=/"/ skip=/\\"/ end=/"/ contained contains=propSep,listSep
syntax region parserString start=/'/ skip=/\\'/ end=/'/ contained contains=@stringSpecial,@htmlTop
syntax region parserString start=/"/ skip=/\\"/ end=/"/ contained contains=@stringSpecial,@htmlTop

syntax match ifParserFunc /if\s*(/he=e-1 contained 
syntax region parserCaseFull matchgroup=parserCase start=/\ccase/ end=/:/rs=s+1 contains=parserIdent,parserString,parserConst,ParserFloatNumber
syntax match parserCaseDefault /default:/ contained

" Parser Roll errors
syntax match parserRollBracketError contained /\[/
syntax match parserCmdBracketError contained /{/
syntax match parserEndRollBracketError contained /\]/
syntax match parserEndCmdBracketError contained /}/
syntax match parserBackTickError contained /`/
syntax cluster parserErrors add=parserRollBracketError,parserCmdBracketError,parserEndRollBracketError,parserEndCmdBracketError,parserBackTickError

" Roll behaviours
syntax match beHidden /\ch\s*[,:]/ contained
syntax match bePlain /\cr\s*[,:]/ contained
syntax match beExpanded /\ce\s*[,:]/ contained
syntax match beTextNoArg /\ct\(ooltip\)\?\s*[,:]/ contained
syntax match beCode /\ccode\s*[,:]/ contained
syntax region beCountFull matchgroup=beCount start=/\cc\(ount\)\?\s*(/re=e-2 end=/)\s*[,:]/rs=s+1 contained contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beTextFull matchgroup=beText start=/\ct\(ooltip\)\?\s*(/ end=/)\s*[,:]/ms=s+1 contained contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beForEachFull matchgroup=beForEach start=/\cforeach\s*(/he=s+3 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beWhileFull matchgroup=beWhile start=/\cwhile\s*(/me=e-2 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beIfFull matchgroup=beIf start=/\cif\s*(/me=e-2 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beMacroFull matchgroup=beMacro start=/\cmacro\s*(/me=e-2 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beForFull matchgroup=beFor start=/\cfor\s*(/me=e-2 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beSwitchFull matchgroup=beSwitch start=/\cswitch\s*(/me=e-2 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber


syntax cluster rollBehaviours add=beCountFull,beTextFull,beForEachFull,beWhileFile,beIfFull,beMacroFull,beSwitchFull,beHidden,bePlain,beExpanded,beTextNoArg,beCode

"syntax match beParserRollBehaviour /[^\]:]\+:/  contained contains=beHidden,bePlain,beExpanded,beCountFull,beTextfull,beTextNoArg,beForEachFull,beWhileFull,beIfFull,beCode,beMacroFull,beForFull,beSwitchFull


" Parser rolls and commands.
"syntax match parserInnerRoll /{.*}/ contained contains=innerParserRoll,@htmlTop
syntax region parserInnerRoll start=/{/rs=e end=/}/re=s matchgroup=parserRollCmd contained contains=parserRoll,@htmlTop

"syntax region innerParserRoll matchgroup=parserRollBracket start=/\[/ skip=/\\\\]/ end=/\]/ contains=parserRollBehaviour,ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber,beParserRollBehaviour,@rollBehaviours,parserCaseFull,parserCaseDefault

syntax region parserRoll matchgroup=parserRollBracket start=/\[/ skip=/\\\\]/ end=/\]/ contains=parserRollBehaviour,ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber,beParserRollBehaviour,parserInnerRoll,@parserErrors,parserCaseFull,@rollBehaviours,parserCaseDefault

syntax region parseCmd matchgroup=parserCmdBrace start=/{/ skip=/\\}]/ end=/}/ contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber




highlight link parserFunc Statement
highlight link ifParserFunc Statement
highlight link parserCase Statement
highlight link parserCaseDefault Statement
highlight link parserIdent Identifier
highlight link parserCmdBrace Statement
highlight link parserCmd Macro
highlight link parserRollBracket Statement
highlight link parserRoll Macro
highlight link innerParserRoll Macro
highlight link parserOps Special
highlight link parserString String
highlight link parserConst Constant
highlight link parserfloatE Constant
highlight link parserfloatNumber Constant
highlight link parserfloatExponent Constant
highlight link beHidden Statement
highlight link bePlain Statement
highlight link beExpanded Statement
highlight link beCount Statement
highlight link beText Statement
highlight link beTextNoArg Statement
highlight link beForEach Statement
highlight link beWhile Statement
highlight link beIf Statement
highlight link beCode Statement
highlight link beMacro Statement
highlight link beFor Statement
highlight link beSwitch Statement
highlight link propSep Special
highlight link listSep Special
highlight link inputSep Special
highlight link inputText Special
highlight link inputList Special
highlight link inputCheck Special
highlight link inputRadio Special
highlight link inputLabel Special
highlight link inputProps Special
highlight link inputWidth Special
highlight link inputSelect Special
highlight link inputValue Special
highlight link inputText Special
highlight link inputIcon Special
highlight link inputIconSize Special
highlight link inputOrient Special
highlight link inputSetVars Special
highlight link parserSpecialVar Special
highlight link macroLoc Special
highlight link mtCom KeyWord
highlight link parserInnerRoll Keyword

highlight link parserRollBracketError Error
highlight link parserCmdBracketError Error
highlight link parserEndRollBracketError Error
highlight link parserEndCmdBracketError Error

highlight link hintHi Statement
highlight link hintHiRet Identifier
highlight link hintHiParam Identifier
