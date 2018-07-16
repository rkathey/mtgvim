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

" the following list is extracted from AliasMask's Notepad syntax file
syntax keyword parserFunc abort abs absolutevalue add addAllNPCsToInitiative addAllPCsToInitiative contained
syntax keyword parserFunc addAllToInitiative addTableEntry addToInitiative contained
syntax keyword parserFunc arg argCount assert average avg band bitwiseand bitwisenot bitwiseor contained
syntax keyword parserFunc bitwisexor bnot bor bringToFront broadcast bxor canSeeToken ceil ceiling clearLights clearTable contained
syntax keyword parserFunc closeDialog closeFrame code concat copyToken count countStrProp countsuccess createMacro createTable contained
syntax keyword parserFunc currentToken decode defineFunction deleteStrProp deleteTable deleteTableEntry deselectTokens contained
syntax keyword parserFunc dialog divide drop encode endsWith eval evalMacro execLink execMacro expanded explode contained
syntax keyword parserFunc explodingSuccess exposeFOW exposePCOnlyArea findToken floor foreach formatStrProp frame contained
syntax keyword parserFunc fudge getAllMapNames getAllPlayerNames contained
syntax keyword parserFunc getAllPropertyNames getBar getCurrentInitiative getCurrentMapName getDistance contained
syntax keyword parserFunc getDistanceToXY getDrawOrder getExposedTokenNames getExposedTokens getFindCount getGMName getGMNotes contained
syntax keyword parserFunc getGroup getGroupCount getGroupEnd getGroupStart getHalo getImage getImpersonated getImpersonatedName contained
syntax keyword parserFunc getInfo getInitiative getInitiativeHold getInitiativeList getInitiativeRound getInitiativeToken contained
syntax keyword parserFunc getLabel getLastPath getLayer getLibProperty getLights getMacroButtonIndex getMacroCommand contained
syntax keyword parserFunc getMacroGroup getMacroIndexes getMacroLocation getMacroName getMacroProps getMacros contained
syntax keyword parserFunc getMatchingLibProperties getMatchingProperties getMoveCount getName getNotes getNPC contained
syntax keyword parserFunc getNPCNames getOwned getOwnedNames getOwnerOnlyVisible getOwners getPC getPCNames contained
syntax keyword parserFunc getPlayerName getProperty contained
syntax keyword parserFunc getPropertyDefault getPropertyNames getPropertyType getRawProperty contained
syntax keyword parserFunc getSelected getSelectedNames getSightType getSize getSpeech getSpeechNames getState contained
syntax keyword parserFunc getStateImage getStrProp getTableAccess getTableNames getTableRoll getTableVisible contained
syntax keyword parserFunc getTokenFacing getTokenGMName getTokenHalo getTokenHandout getTokenImage getTokenLabel contained
syntax keyword parserFunc getTokenNames getTokenNames.info getTokenPortrait getTokens getTokens.info getTokenStates contained
syntax keyword parserFunc getTokenX getTokenY getVisible getVisibleMapNames getVisibleTokenNames getVisibleTokens contained
syntax keyword parserFunc getWithState getWithStateNames gmtt goto hasImpersonated hasLightSource hasMacro contained
syntax keyword parserFunc hasProperty hasSight hero herobody herostun hex hidden hide hypot hypotenuse indexOf contained
syntax keyword parserFunc indexKeyStrProp indexValueStrProp initiativeSize input input.check input.label contained
syntax keyword parserFunc input.list input.props input.radio input.tab input.text isBarVisible isDialogVisible contained
syntax keyword parserFunc isFrameVisible isFunctionDefined isGM isNPC isNumber isOwnedByAll isOwner isPC contained
syntax keyword parserFunc isPropertyEmpty isTrusted isVisible json.append json.contains json.count contained
syntax keyword parserFunc json.difference json.equals json.evaluate json.fields json.fromList json.fromStrProp contained
syntax keyword parserFunc json.get json.indent json.indexOf contained
syntax keyword parserFunc json.intersection json.isEmpty json.length json.merge json.remove json.removeAll contained
syntax keyword parserFunc json.reverse json.set json.shuffle json.sort json.subset json.toList json.toStrProp json.type json.union contained
syntax keyword parserFunc json.unique keep lastIndexOf length listAppend listContains listCount listDelete listFind listFormat contained
syntax keyword parserFunc listGet listInsert listReplace listSort ln log log10 lower macro macro.args macro.return macroLink contained
syntax keyword parserFunc macroLink.info macroLinkText macroLinkText.info matches max mean median min movedOverPoints contained
syntax keyword parserFunc movedOverToken moveToken moveTokenFromMap moveTokenToMap multiply nextInitiative number contained
syntax keyword parserFunc oldFunction openTest pow power regex.info1 regex.info2 regex.info3 removeAllFromInitiative contained
syntax keyword parserFunc removeAllNPCsFromInitiative removeAllPCsFromInitiative removeFromInitiative removeMacro contained
syntax keyword parserFunc removeToken removeTokenFacing replace reroll resetFrame resetProperty result roll roll.count contained
syntax keyword parserFunc roll.result round selectTokens self selftt sendToBack set setAllStates contained
syntax keyword parserFunc setBar setBarVisible setCurrentInitiative setCurrentMap contained
syntax keyword parserFunc setDrawOrder setGMName setGMNotes setHalo setHasSight setInitiative setInitiativeHold contained
syntax keyword parserFunc setInitiativeRound setLabel setLayer setLibProperty setLight setMacroCommand setMacroProps contained
syntax keyword parserFunc setName setNotes setNPC setOwner setOwnerOnlyVisible setPC setProperty setPropertyType contained
syntax keyword parserFunc setSightType setSize setSpeech setState setStrProp setTableAccess setTableEntry setTableRoll contained
syntax keyword parserFunc setTableVisible setTokenFacing setTokenGMName setTokenHandout setTokenImage setTokenLabel contained
syntax keyword parserFunc setTokenPortrait setVisible sortInitiative sqr sqrt square squareroot sr4 sr4e startsWith contained
syntax keyword parserFunc strfind strformat strformat.info1 strformat.info2 string stringToList strPropFromVars contained
syntax keyword parserFunc substring subtract success sum switch switchToken table tableImage tbl tblImage token contained
syntax keyword parserFunc token.gm_name token.halo token.init token.initHold token.label token.name token.visible contained
syntax keyword parserFunc tooltip trim ubiquity unformatted upper varsFromStrProp while whisper contained

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
syntax region parserString start=/'/ skip=/\\'/ end=/'/ contained contains=@stringSpecial,@htmlTop,jinja
syntax region parserString start=/"/ skip=/\\"/ end=/"/ contained contains=@stringSpecial,@htmlTop,jinja

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
" Added \< at the start of each pattern to restrict search to word boundaries
syntax region beCountFull matchgroup=beCount start=/\<\cc\(ount\)\?\s*(/re=e-2 end=/)\s*[,:]/rs=s+1 contained contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beTextFull matchgroup=beText start=/\<\ct\(ooltip\)\?\s*(/ end=/)\s*[,:]/ms=s+1 contained contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beForEachFull matchgroup=beForEach start=/\<\cforeach\s*(/he=s+3 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beWhileFull matchgroup=beWhile start=/\<\cwhile\s*(/me=e-2 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beIfFull matchgroup=beIf start=/\<\cif\s*(/me=e-2 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beMacroFull matchgroup=beMacro start=/\<\cmacro\s*(/me=e-2 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beForFull matchgroup=beFor start=/\<\cfor\s*(/me=e-2 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber
syntax region beSwitchFull matchgroup=beSwitch start=/\<\cswitch\s*(/me=e-2 end=/)\s*[,:]/me=s+1 contained  contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber


syntax cluster rollBehaviours add=beCountFull,beTextFull,beForEachFull,beWhileFile,beIfFull,beMacroFull,beSwitchFull,beHidden,bePlain,beExpanded,beTextNoArg,beCode

"syntax match beParserRollBehaviour /[^\]:]\+:/  contained contains=beHidden,bePlain,beExpanded,beCountFull,beTextfull,beTextNoArg,beForEachFull,beWhileFull,beIfFull,beCode,beMacroFull,beForFull,beSwitchFull


" Parser rolls and commands.
"syntax match parserInnerRoll /{.*}/ contained contains=innerParserRoll,@htmlTop
syntax region parserInnerRoll start=/{/rs=e end=/}/re=s matchgroup=parserRollCmd contained contains=parserRoll,@htmlTop

"syntax region innerParserRoll matchgroup=parserRollBracket start=/\[/ skip=/\\\\]/ end=/\]/ contains=parserRollBehaviour,ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber,beParserRollBehaviour,@rollBehaviours,parserCaseFull,parserCaseDefault

syntax region parserRoll matchgroup=parserRollBracket start=/\[/ skip=/\\\\]/ end=/\]/ contains=parserRollBehaviour,ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber,beParserRollBehaviour,parserInnerRoll,@parserErrors,parserCaseFull,@rollBehaviours,parserCaseDefault,jinja

syntax region parseCmd matchgroup=parserCmdBrace start=/{/ skip=/\\}]/ end=/}/ contains=ifParserFunc,parserFunc,parserIdent,parserString,parserConst,parserFloatNumber

syntax region jinja start=/\v\{\{/ end=/\v\}\}/
syntax region jinja start=/\v\{\%/ end=/\v\%\}/

" too much highlighy kills the highlight
"highlight link parserIdent Identifier

"Support jinja 2 directives, this is a template engine, you may disable it
" if you don't use it
highlight link jinja DiffChange

highlight link parserRoll Macro
highlight link innerParserRoll Macro
highlight link parserCmd Macro
highlight link parserFunc Identifier
highlight link ifParserFunc Statement
highlight link parserCase Statement
highlight link parserCaseDefault Statement
highlight link parserCmdBrace Statement
highlight link parserRollBracket Statement
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
