""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 
""" Roll and command completion
""" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mtmacro#RollCompleteList = []
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Absolute function
let entry = {}
let entry['word'] = ["abs", "absolutevalue"]
let entry['param'] = "number"
let entry['return'] = "number"
let entry['menu'] = "returns the absolute value of a number."
let entry['info'] = "Returns the absolute value of a number\nThe absolute value of a number is the number without the sign"
let entry['eg'] = ["_function_(4) => 4", "_function_(-3) => 3"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add function (Numbers)
let entry = {}
let entry['word'] = ["add", "sum"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "sums numbers together."
let entry['info'] = "Adds several numbers together"
let entry['eg'] = ["_function_(20, 1, 4) => 25"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add function (Strings)
let entry = {}
let entry['word'] = ["add", "concat"]
let entry['param'] = "string, string, ..."
let entry['return'] = "string"
let entry['menu'] = "concatenates strings together."
let entry['info'] = "Concatenates several strings together."
let entry['eg'] = ["_function_(\"this\", \"is\", \"a\", \"test\") => \"thisisatest\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set function
let entry = {}
let entry['word'] = ["set"]
let entry['param'] = "variableName, value"
let entry['return'] = "result"
let entry['menu'] = "sets the value of a variable"
let entry['info'] = "Sets the value of a variable."
let entry['eg'] = ["_function_(\"blah\", 4)"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Band function
let entry = {}
let entry['word'] = ["band", "bitwiseand"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "performs a bitwise and of the values."
let entry['info'] = "Perfoms a bitwise and of the vlaues."
let entry['eg'] = ["_function_(2, 6, 10) => 2"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bnot function
let entry = {}
let entry['word'] = ["bnot", "bitwisenot"]
let entry['param'] = "number"
let entry['return'] = "number"
let entry['menu'] = "performs a bitwise not of the value."
let entry['info'] = "Performs a bitwise not of the value."
let entry['eg'] =  ["_function_(1) => 0", "_function_(4) => -3"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bor function
let entry = {}
let entry['word'] = ["bor", "bitwiseor"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "performs a bitwise or of the values."
let entry['info'] = "Performs a bitwise or of the values."
let entry['eg'] =  ["_function_(2, 4, 8) => 14"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bxor function
let entry = {}
let entry['word'] = ["bxor", "bitwisexor"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "performs a bitwise exclusive or of the values."
let entry['info'] = "Performs a bitwise exclusive or of the values."
let entry['eg'] = ["_function_(2, 2, 8) => 8"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ciel function
let entry = {}
let entry['word'] = ["ceil", "ceiling"]
let entry['param'] = "number"
let entry['return'] = "number"
let entry['menu'] = "rounds up to an integer value."
let entry['info'] = "Rounds up to an integer value."
let entry['eg'] = ["_function_(3.2) => 4", "ciel(2) => 2"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Divide function
let entry = {}
let entry['word'] = ["divide"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "divides one number by other numbers."
let entry['info'] = "Divide one number by other numbers, the first is divided by the second and that total is divided by the third and so on for all the aruments."
let entry['eg'] = ["_function_(5,2,4) => 0.625"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Eval function
let entry = {}
let entry['word'] = ["eval"]
let entry['param'] = "expr"
let entry['return'] = "result"
let entry['menu'] = "evaluates the contents of a string."
let entry['info'] = "Evalues the contents of a string."
let entry['eg'] = ["_function_(\"]1 + 1\") => 2", "_function_(\"min(3, 5)\") => 3"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Floor function
let entry = {}
let entry['word'] = ["floor"]
let entry['param'] = "number"
let entry['return'] = "number"
let entry['menu'] = "rounds down to an integer value."
let entry['info'] = "Rounds down to an integer value."
let entry['eg'] = ["_function_(3.9) => 3", "_function_(5) => 5"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hex function
let entry = {}
let entry['word'] = ["hex"]
let entry['param'] = "number"
let entry['return'] = "string"
let entry['menu'] = "gets the hexadecimal representation of the number."
let entry['info'] = "Gets the hexadecimal representation of the number."
let entry['eg'] = ["_function_(23) => 0x17"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Hypotenuse function
let entry = {}
let entry['word'] = ["hypot", "hypotenuse"]
let entry['param'] = "sideA, sideB"
let entry['return'] = "number"
let entry['menu'] = "calculates the hypotenuse of a triangle with sideA and sideB"
let entry['info'] = "Calculates the hypotenuse of a triangle with sideA and sideB."
let entry['eg'] = ["_function_(3,4) => 5"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ln function
let entry = {}
let entry['word'] = ["ln"]
let entry['param'] = "number"
let entry['return'] = "number"
let entry['menu'] = "calculates the natural logarithm of a number."
let entry['info'] = "Calculates the natural logarithm of a number."
let entry['eg'] = ["_function_(5) => 1.6094379124341002817999424223671667277812957763671875"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Log function
let entry = {}
let entry['word'] = ["log", "log10"]
let entry['param'] = "number"
let entry['return'] = "number"
let entry['menu'] = "calculates the base 10 logarithm of a number."
let entry['info'] = "Calculates the base 10 logarithm of a number."
let entry['eg'] = ["_function_(100) => 2"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Max function
let entry = {}
let entry['word'] = ["max"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "returns the highest of the passed in numbers."
let entry['info'] = "Returns the highest of the passed in numbers."
let entry['eg'] = ["_function_(2, 12, 8) => 12"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mean function
let entry = {}
let entry['word'] = ["mean", "avg", "average"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "calculates the mean value of a list of numbers."
let entry['info'] = "Calculates the mean value of a list of numbers."
let entry['eg'] = ["_function_(1, 2, 3, 3, 10) => 3.8"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Median function
let entry = {}
let entry['word'] = ["median"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "returns the median of the numbers"
let entry['info'] = "Returns the median (middle value in the list of values when sorted in order) of the passed in numbers."
let entry['eg'] = ["_function_(3, 6, 2, 2) => 2.5 "]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Min function
let entry = {}
let entry['word'] = ["min"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "returns the minimum of the passed in numbers."
let entry['info'] = "Returns the minimum of the passed in numbers."
let entry['eg'] = ["_function_(2, 12, 8) => 2"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Multiply function
let entry = {}
let entry['word'] = ["multiply"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "multiplies all of the numbers passed in."
let entry['info'] = "Returns the value of all the numbers multiplied together."
let entry['eg'] = ["_function_(2, 12, 8) => 384"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Square function
let entry = {}
let entry['word'] = ["square", "sqr"]
let entry['param'] = "number"
let entry['return'] = "number"
let entry['menu'] = "returns the square of the number."
let entry['info'] = "Returns the square of a number."
let entry['eg'] = ["_function_(4) => 16"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Power function
let entry = {}
let entry['word'] = ["power", "pow", "factor"]
let entry['param'] = "base, exponent"
let entry['return'] = "number"
let entry['menu'] = "returns base raised to power of the exponent."
let entry['info'] = "Returns the value of bases raised to the power of the exponent.\nNote: _function_(x,2) is equivelant to square(x)"
let entry['eg'] = ["_function_(4,2) => 16", "_function_(2,3) => 8"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Squareroot function
let entry = {}
let entry['word'] = ["sqrt", "squareroot"]
let entry['param'] = "number"
let entry['return'] = "number"
let entry['menu'] = "returns the square root of a number."
let entry['info'] = "Returns the square root of a number,"
let entry['eg'] = ["_function_(4) => 2", "_function_(16) => 4"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" subtract function
let entry = {}
let entry['word'] = ["subtract"]
let entry['param'] = "number, number, ..."
let entry['return'] = "number"
let entry['menu'] = "subtracts the second and all subsequent numbers from the first."
let entry['info'] = "Subtracts the second and all subsequent numbers from the first."
let entry['eg'] = ["_function_(4,2) => 2", "_function_(10,2,3) => 5"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if function
let entry = {}
let entry['word'] = ["if"]
let entry['param'] = "condition, trueExpr, falseExpr"
let entry['return'] = "result"
let entry['menu'] = "returns trueExpr or falseExpr based on the condition."
let entry['info'] = "Returns trueExpr or falseExpr based on the condition."
let entry['eg'] = ["_function_(1 > 2, 4, 5) => 5", "_function_(6 == 6, 1, 2) => 1"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Abort function
let entry = {}
let entry['word'] = ["abort"]
let entry['param'] = "value"
let entry['return'] = "result"
let entry['menu'] = "Discontinue processing and discards output if value == 0."
let entry['info'] = "Discontinue processing of the macro and discards the output if value == 0. Any processing such as setting variables or properties that occurs before the call to _function_() will still take effect."
let entry['eg'] = ["_function_(1) => \"Do nothing and continue processing\"", "_function_(0) => \"Exits macro discarding any output\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" addAllToInitiative function
let entry = {}
let entry['word'] = ["addAllToInitiative"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "numberAdded"
let entry['menu'] = "Adds all tokens to inititiative panel."
let entry['info'] = "Adds all tokens on map to inititiative panel."
let entry['eg'] = ["_function_()" ]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" addAllPCsToInitiative function
let entry = {}
let entry['word'] = ["addAllPCsToInitiative"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "numberAdded"
let entry['menu'] = "Adds all the PC tokes to initiative panel."
let entry['info'] = "Adds all the PC tokens on the map to the initiative panel."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" addAllNPCsToInitiative function
let entry = {}
let entry['word'] = ["addAllNPCsToInitiative"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "numberAdded"
let entry['menu'] = "Adds all the NPC tokes to initiative panel."
let entry['info'] = "Adds all the NPC tokens on the map to the initiative panel."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getCurrentInitiative function
let entry = {}
let entry['word'] = ["getCurrentInitiative"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "offset"
let entry['menu'] = "Gets the offset for token with initiative."
let entry['info'] = "Gets the offset for the token in the initiative window for the token with initiative. The token offset starts at 0."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setCurrentInitiative function
let entry = {}
let entry['word'] = ["setCurrentInitiative"]
let entry['gm'] = 1
let entry['param'] = "tokenNumber"
let entry['return'] = "number"
let entry['menu'] = "Sets the token in the initiative window that has the initiative.."
let entry['info'] = "Sets the token in the initiative window that has the initiative, offset starts at 0."
let entry['eg'] = ["_function_(2)"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getInititiveRound function
let entry = {}
let entry['word'] = ["getInitiativeRound"]
let entry['param'] = ""
let entry['return'] = "roundNo"
let entry['menu'] = "Gets the number of the round from the initiative window."
let entry['info'] = "Gets the number of the round from the initiative window."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setInitiativeRound function
let entry = {}
let entry['word'] = ["SetInitiativeRound"]
let entry['gm'] = 1
let entry['param'] = "roundNo"
let entry['return'] = "roundNo"
let entry['menu'] = "Sets the initiative round in the initiative window."
let entry['info'] = "Sets the initiative round in the initiative window."
let entry['eg'] = ["_function_(3)"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" table function
let entry = {}
let entry['word'] = ["table", "tbl"]
let entry['param'] = "tableName [, roll]"
let entry['return'] = "result"
let entry['menu'] = "Gets a value from a table."
let entry['info'] = "Gets a value from a table. if a roll is specified then that roll is used to determine which value is to be returned, otherwise the default roll for the table is used."
let entry['eg'] = ["_function_(\"dice\")", "_function_(\"dice\", \"2d4\")" ]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tableImage function
let entry = {}
let entry['word'] = ["tableImage", "tblImage"]
let entry['param'] = "tableName [, roll [, size] ]"
let entry['return'] = "image"
let entry['menu'] = "Gets an image from a table."
let entry['info'] = "Gets an image from a table. if a roll is specified then that roll is used to determine which value is to be returned, otherwise the default roll for the table is used."
let entry['eg'] = ["<img src='_function_(\"dice\")'></img>", "<img src='_function_(\"dice\", \"2d4\")'></img>", "<img src='_function_(\"dice\", \"2d4\", 20)'></img>" ]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nextInitiative function
let entry = {}
let entry['word'] = ["nextInitiative"]
let entry['param'] = ""
let entry['return'] = "offset"
let entry['menu'] = "Advances the initiative to the next token."
let entry['info'] = "Advances the initiative to the next token. Only the GM or owner of the token that currently has the initiative can call this function"
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" sortInitiatitve function
let entry = {}
let entry['word'] = ["sortInitiative"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "numberTokens"
let entry['menu'] = "Sorts the inatiative list."
let entry['info'] = "Sorts the inatiative list."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" initiativeSize function
let entry = {}
let entry['word'] = ["initiativeSize"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "numberTokens"
let entry['menu'] = "Gets the number of tokens in the initiative list."
let entry['info'] = "Gets the number of tokens in the initiative list."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" removeAllFromInitiative function
let entry = {}
let entry['word'] = ["removeAllFromInitiative"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "numberRemoved"
let entry['menu'] = "Removes all the tokens from the initiative list."
let entry['info'] = "Removes all the tokens from the initiative list."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" removeAllPCsFromInitiative function
let entry = {}
let entry['word'] = ["removeAllPCsFromInitiative"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "numberRemoved"
let entry['menu'] = "Removes all the PC tokens from the initiative list."
let entry['info'] = "Removes all the PC tokens from the initiative list."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" removeAllNPCsFromInitiative function
let entry = {}
let entry['word'] = ["removeAllNPCsFromInitiative"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "numberRemoved"
let entry['menu'] = "Removes all the NPC tokens from the initiative list."
let entry['info'] = "Removes all the NPC tokens from the initiative list."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getStateImage function
let entry = {}
let entry['word'] = ["getStateImage"]
let entry['param'] = "stateName [, size]"
let entry['return'] = "image"
let entry['menu'] = "Gets the image associated with a state."
let entry['info'] = "Gets the image associated with a state. The value returned is the asset id which can be used in the <img> tag."
let entry['eg'] = ["<img src='_function_()'></img>"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" listGet function
let entry = {}
let entry['word'] = ["listGet"]
let entry['param'] = "list, index [, delimiter]"
let entry['return'] = "string"
let entry['menu'] = "Gets the specified value from the list."
let entry['info'] = "Gets the specified value from the list. The list index starts at 0. If the list delimiter is not specified then the default value of ',' is used."
let entry['eg'] = ["_function_(\"a,b,c,d\", 2) => \"c\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" listDelete function
let entry = {}
let entry['word'] = ["listDelete"]
let entry['param'] = "list, index, [, delimiter]"
let entry['return'] = "list"
let entry['menu'] = "Deletes the specified value from the list."
let entry['info'] = "Deletes the specified value from the list. The list index starts at 0. If the list delimiter is not specified then the default value of ',' is used."
let entry['eg'] = ["_function_(\"a,b,c,d\", 2) => \"a,b,d\" "]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" listCount function
let entry = {}
let entry['word'] = ["listCount"]
let entry['param'] = "list [, delimiter]"
let entry['return'] = "number"
let entry['menu'] = "Gets the number of items in the list."
let entry['info'] = "Gets the number of items in the list. If delimiter is not specified then the default value of ',' is used."
let entry['eg'] = ["_function_(\"a,b,c,d\") => 4"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" listFind function
let entry = {}
let entry['word'] = ["listFind"]
let entry['param'] = "list, value [, delimiter]"
let entry['return'] = "offset"
let entry['menu'] = "Finds the index of the value in the list."
let entry['info'] = "Finds the index of the value in the list. The index of the list starts at 0, if the delimiter is not specified then the default value of ',' is used."
let entry['eg'] = ["_function_(\"a,b,c,d\", \"b\") => 1"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" listAppend function
let entry = {}
let entry['word'] = ["listAppend"]
let entry['param'] = "list, value [, delimiter]"
let entry['return'] = "list"
let entry['menu'] = "Appends a value to the end of the list."
let entry['info'] = "Appends a value to the end of the list, if delimiter is not specified then the default value of ',' is used."
let entry['eg'] = ["_function_(\"a,b,c,d\", \"e\") => \a,b,c,d,e\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" listInsert function
let entry = {}
let entry['word'] = ["listInsert"]
let entry['param'] = "list, index, value [, delimiter]"
let entry['return'] = "list"
let entry['menu'] = "Inserts a value into the list."
let entry['info'] = "Insers a value into the list at the specified index. List indexes start at 0, if the delimiter is not specified then the default value of ',' is used."
let entry['eg'] = ["_function_(\"a,b,c,d\", 1, \"e\") => \"a,e,b,c,d\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" listReplace function
let entry = {}
let entry['word'] = ["listReplace"]
let entry['param'] = "list, index, value [, delimiter]"
let entry['return'] = "list"
let entry['menu'] = "Replaces a value at the specified index in the list."
let entry['info'] = "Replaces a value at the specified index in the list. List Indexes start at 0, if the delimiter is not specified then the default value of ',' is used."
let entry['eg'] = ["_function_(\"a,b,c,d\", 1, \"e\") => \"a,e,c,d\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getStrProp function
let entry = {}
let entry['word'] = ["getStrProp"]
let entry['param'] = "propertyString, key"
let entry['return'] = "string"
let entry['menu'] = "Gets the value of the key in the property list."
let entry['info'] = "Gets the value of the key in the property list."
let entry['eg'] = ["_function_(\"a=1; b=4\", \"b\") => \"4\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setStrProp function
let entry = {}
let entry['word'] = ["setStrProp"]
let entry['param'] = "propertyString, key, value"
let entry['return'] = "propertyString"
let entry['menu'] = "Sets the value for a key in the property list."
let entry['info'] = "Sets the value for a key in the property list, if the key does not exist then it is added."
let entry['eg'] = ["_function_(\"a=1; b=4\", \"a\", \"test\") => \"a=test; b=4\"", "_function_(\"a=1; b=4\", \"c\", \"test\") => \"a=1; b=4; c=test\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" deleteStrProp function
let entry = {}
let entry['word'] = ["deleteStrProp"]
let entry['param'] = "propertyString, key"
let entry['return'] = "propertyString"
let entry['menu'] = "Deletes the key from a property list."
let entry['info'] = "Deletes the key from a property list."
let entry['eg'] = ["_function_(\"a=1; b=4\", \"a\") => \"a=1;\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" varsFromStrProp function
let entry = {}
let entry['word'] = ["varsFromStrProp"]
let entry['param'] = "propertyString"
let entry['return'] = "noProps"
let entry['menu'] = "Creates variables that are set to the values specified in the property list."
let entry['info'] = "Creates variables that are set to the values specified in the property list."
let entry['eg'] = ["_function_(\"a=1;b=4\")"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" countStrProp function
let entry = {}
let entry['word'] = ["countStrProp"]
let entry['param'] = "propertyString"
let entry['return'] = "number"
let entry['menu'] = "Counts the number of properties in a property list."
let entry['info'] = "Counts the number of properties in a property list."
let entry['eg'] = ["_function_(\"a=1;b=4\") => 2"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indexKeyStrProp function
let entry = {}
let entry['word'] = ["indexKeyStrProp"]
let entry['param'] = "propertyString, index"
let entry['return'] = "offset"
let entry['menu'] = "Gets the key that is at index in the property list."
let entry['info'] = "Gets the key that is at index in the property list. The index of the property list starts at 0."
let entry['eg'] = ["_function_(\"a=1; b=4\", 0) => \"a\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indexValueStrProp function
let entry = {}
let entry['word'] = ["indexValueStrProp"]
let entry['param'] = "propertyString, index"
let entry['return'] = "offset"
let entry['menu'] = "Gets the value that is at index in the property list."
let entry['info'] = "Gets the value that is at index in the property list. The index of the property list starts at 0."
let entry['eg'] = ["_function_(\"a=1; b=4\", 0) => \"1\""]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" addToInitiative function
let entry = {}
let entry['word'] = ["addToInitiative"]
let entry['param'] = ""
let entry['return'] = "numberAdded"
let entry['menu'] = "Adds the current token to the initiative panel."
let entry['info'] = "Adss the current token to the initaitive panel."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getBar function
let entry = {}
let entry['word'] = ["getBar"]
let entry['param'] = "name"
let entry['return'] = "number"
let entry['menu'] = "Gets the numeric value for the specified bar."
let entry['info'] = "Gets the numeric value for the specified bar. The value returned is between 0 and 1 inclusive."
let entry['eg'] = ["_function_(\"HP\")"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setBar function
let entry = {}
let entry['word'] = ["setBar"]
let entry['param'] = "name, value"
let entry['return'] = "number"
let entry['menu'] = "Sets the numeric value of the bar."
let entry['info'] = "Sets the numeric value of the bar. The value to set for the bar should be between 0 and 1 inclusive."
let entry['eg'] = ["_function_(\"HP\",HP/MaxHp)"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getGMName function
let entry = {}
let entry['word'] = ["getGMName"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "gmname"
let entry['menu'] = "Gets the GM name of the token."
let entry['info'] = "Gets the GM name of the token."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setGMName function
let entry = {}
let entry['word'] = ["setGMName"]
let entry['gm'] = 1
let entry['param'] = "name"
let entry['return'] = "gmname"
let entry['menu'] = "Sets the GM name of the token."
let entry['info'] = "Sets the GM name of the token."
let entry['eg'] = ["_function_(\"Fred\")"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getHalo function
let entry = {}
let entry['word'] = ["getHalo"]
let entry['param'] = ""
let entry['return'] = "string"
let entry['menu'] = "Gets the halo color of the token."
let entry['info'] = "Gets the halo color of the token. The value returned is a string that contains the hexidecimal representation of the color."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setHalo function
let entry = {}
let entry['word'] = ["setHalo"]
let entry['param'] = "color"
let entry['return'] = "string"
let entry['menu'] = "Sets the halo color of the token."
let entry['info'] = "Sets the halo color of the token. The value is a string that contains the hexidecimal representation of the color."
let entry['eg'] = ["_function_(#FF00FF)"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getTokenImage function
let entry = {}
let entry['word'] = ["getTokenImage"]
let entry['param'] = "[size]"
let entry['return'] = "image"
let entry['menu'] = "Gets the image of the token."
let entry['info'] = "Gets the image of the token. The value returned is an asset string that can be used in an <img> tag." 
let entry['eg'] = ["<img src='_function_()'></img>"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setInitiative function
let entry = {}
let entry['word'] = ["setInitiative"]
let entry['param'] = "value"
let entry['return'] = "int"
let entry['menu'] = "Sets the initiative of a token."
let entry['info'] = "Sets the initiative of a token."
let entry['eg'] = ["_function_(12)"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getInitiative function
let entry = {}
let entry['word'] = ["getInitiative"]
let entry['param'] = ""
let entry['return'] = "init"
let entry['menu'] = "Gets the initiative of a token."
let entry['info'] = "Gets the initiative of a token."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setInitiativeHold function
let entry = {}
let entry['word'] = ["setInitiativeHold"]
let entry['param'] = "hold"
let entry['return'] = "hold"
let entry['menu'] = "Sets if a token is on hold in the initiative list."
let entry['info'] = "Sets if a token is on hold in the initiative list. If hold is non zero then the token is on hold, if it is 0 then it will not be on hold."
let entry['eg'] = ["_function_(1) to place the token on hold in the initiative", "_function_(0) to rmove the token from on hold in the initiative"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getInitiativeHold function
let entry = {}
let entry['word'] = ["getInitiativeHold"]
let entry['param'] = ""
let entry['return'] = "hold"
let entry['menu'] = "Gets if the token is on hold in the initiative list."
let entry['info'] = "Gets if the token is on hold in the initiative list. Returns 1 if the token is on hold or 0 if it is not on hold."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getLabel function
let entry = {}
let entry['word'] = ["getLabel"]
let entry['param'] = ""
let entry['return'] = "label"
let entry['menu'] = "Gets the label of the token."
let entry['info'] = "Gets the lable of the token."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setLabel function
let entry = {}
let entry['word'] = ["setLabel"]
let entry['param'] = "label"
let entry['return'] = "label"
let entry['menu'] = "Sets the lable of the token."
let entry['info'] = "Sets the lable of the token."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getName function
let entry = {}
let entry['word'] = ["getName"]
let entry['param'] = ""
let entry['return'] = "name"
let entry['menu'] = "Gets the name of the token."
let entry['info'] = "Gets the name of the token."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setName function
let entry = {}
let entry['word'] = ["setName"]
let entry['param'] = "name"
let entry['return'] = "name"
let entry['menu'] = "Sets the name of the token."
let entry['info'] = "Sets the name of the token."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" removeFromInitiative function
let entry = {}
let entry['word'] = ["removeFromInitiative"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "numberRemoved"
let entry['menu'] = "Removes the token from the initiative panel."
let entry['info'] = "Removes the token from the initiative panel."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getState function
let entry = {}
let entry['word'] = ["getState"]
let entry['param'] = "stateName"
let entry['return'] = "val"
let entry['menu'] = "Gets the value of the state for the token."
let entry['info'] = "Gets the value of the state for the token. Returns 1 if the state is set or 0 if the state is not set"
let entry['eg'] = ["_function_(\"Dying\")"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setState function
let entry = {}
let entry['word'] = ["setState"]
let entry['param'] = "stateName, value"
let entry['return'] = "val"
let entry['menu'] = "Sets the value of a state for a token."
let entry['info'] = "Sets the value of a state for a token. If value is non zero then the state is set to on, for 0 the state is set to off."
let entry['eg'] = ["_function_(\"Dying\", 1)", "_function_(\"Dying\", 0)"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setAllStates function
let entry = {}
let entry['word'] = ["setAllStates"]
let entry['param'] = "value"
let entry['return'] = "val"
let entry['menu'] = "Sets the value of all of the states for the token."
let entry['info'] = "Sets the value of all of the states for the token. If value is non zero then all states are set, if the value is 0 then all states are reset."
let entry['eg'] = ["_function_(1)",  "_function_(0)"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setVisible function
let entry = {}
let entry['word'] = ["setVisible"]
let entry['gm'] = 1
let entry['param'] = "visible"
let entry['return'] = "vis"
let entry['menu'] = "Sets if the token is visible to players."
let entry['info'] = "Sets if the token is visible to players. If visible is non zero then the token is visible to players, if it is 0 then the token is not visible to players."
let entry['eg'] = ["_function_(0)", "_function_(1)"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" getVisible function
let entry = {}
let entry['word'] = ["getVisible"]
let entry['gm'] = 1
let entry['param'] = ""
let entry['return'] = "vis"
let entry['menu'] = "Gets if the token is visible to players."
let entry['info'] = "Gets if the token is visible to players. Returns 1 if the token is visible to players or 0 if the token is not visible to players."
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" isBarVisible function
let entry = {}
let entry['word'] = ["isBarVisible"]
let entry['param'] = "barName"
let entry['return'] = "vis"
let entry['menu'] = "Checks if the bar is visible."
let entry['info'] = "Checks if the bar is visible. Returns 1 if the bar is visible or 0 if it is not."
let entry['eg'] = ["_function_(\"Health\")"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setBarVisisble function
let entry = {}
let entry['word'] = ["setBarVisisble"]
let entry['gm'] = 1
let entry['param'] = "barName, visible"
let entry['return'] = "vis"
let entry['menu'] = "Sets if the bar for a token is visible or not."
let entry['info'] = "Sets if the bar for a token is visible or not. If visible is non zero then the bar is visible if it is 0 then the bar is not visible"
let entry['eg'] = ["_function_()"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" input function
let entry = {}
let entry['word'] = ["input"]
let entry['param'] = "inputString, ..."
let entry['return'] = "result"
let entry['menu'] = "Propmts the user for input."
let entry['info'] = "Propmts the user for input. The string is made up of several arguments seperated by |, these are; \n\"varname | value | prompt | inputType | options\""
let entry['eg'] = ["_function_(\"damage | 1d8 | Weapon Damage | TEXT | WIDTH=6)"]
let entry['kind'] = "f"
call add(mtmacro#RollCompleteList, entry)




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" true constant 
let entry = {}
let entry['word'] = ["true"]
let entry['param'] = ""
let entry['menu'] = "true value (1)."
let entry['info'] = ""
let entry['eg'] = [""]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" false constant 
let entry = {}
let entry['word'] = ["false"]
let entry['param'] = ""
let entry['menu'] = "false value (0)."
let entry['info'] = ""
let entry['eg'] = [""]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" state. constant 
let entry = {}
let entry['word'] = ["state."]
let entry['param'] = "name"
let entry['menu'] = "Sets the value of a state for the token"
let entry['info'] = "Sets the value of a state for the token. Assign any non zero to the state to set it, or 0 to the sate to reset it."
let entry['eg'] = ["state.Dying = 1", "state.Dying = 0"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" bar. variable 
let entry = {}
let entry['word'] = ["bar."]
let entry['param'] = "name"
let entry['menu'] = "Sets or gets the value of a token bar."
let entry['info'] = "Sets or gets the value of a token bar. The value should be between 0 and 1.0"
let entry['eg'] = ["bar.Health = HP/HPmax", "health = bar.Health"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" token.name variable 
let entry = {}
let entry['word'] = ["token.name"]
let entry['param'] = "name"
let entry['menu'] = "Sets or gets the name of the token."
let entry['info'] = "Sets or gets the name of the token."
let entry['eg'] = ["token.name = \"BigBadMonsta!\"", "name = token.name"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" token.gm_name variable 
let entry = {}
let entry['word'] = ["token.gm_name"]
let entry['param'] = "name"
let entry['menu'] = "Sets or gets the gm name of the token."
let entry['info'] = "Sets or gets the gm name of the token."
let entry['eg'] = ["token.gm_name = \"BigBadMonsta!\"", "gmname = token.gm_name"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" token.label variable 
let entry = {}
let entry['word'] = ["token.label"]
let entry['param'] = "label"
let entry['menu'] = "Sets or gets the label of the token."
let entry['info'] = "Sets or gets the label of the token."
let entry['eg'] = ["token.label = \"Minion!\"", "label = token.label"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" token.init variable 
let entry = {}
let entry['word'] = ["token.init"]
let entry['param'] = "init"
let entry['menu'] = "Sets or gets the initiative of the token."
let entry['info'] = "Sets or gets the initiative of the token."
let entry['eg'] = ["token.init = 1d20", "initval = token.init"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" token.initHold variable 
let entry = {}
let entry['word'] = ["token.initHold"]
let entry['param'] = "hold"
let entry['menu'] = "Sets or gets the on hold for the initiative of the token."
let entry['info'] = "Sets or gets the on hold for the initiative of the token. If you assign a non zero to the value then the token is placed on hold, if 0 is assigned then the token is taken off of hold"
let entry['eg'] = ["token.hold = 1", "hold = token.hold"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" init.round variable 
let entry = {}
let entry['word'] = ["init.round"]
let entry['param'] = "round"
let entry['menu'] = "Sets or gets the round for the initiative."
let entry['info'] = "Sets or gets the round for the initiative."
let entry['eg'] = ["token.round = 1", "round = token.round"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" init.current variable 
let entry = {}
let entry['word'] = ["init.current"]
let entry['param'] = "current"
let entry['menu'] = "Sets or gets the number of the token in the initiative list that has initiative."
let entry['info'] = "Sets or gets the number of the token in the initiative list that has initiative, the number of the token in the initiative list that has initiative. The offset for the list starts at 0. If no token has initiative then -1 is returned."
let entry['eg'] = ["token.current = 1", "current = token.current"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" token.visible variable 
let entry = {}
let entry['word'] = ["token.visible"]
let entry['param'] = "visible"
let entry['menu'] = "Sets or gets the round if the token is visible to players."
let entry['info'] = "Sets or gets the round if the token is visible to players. If the value is non zero then the token is visible to players if it is 0 then it is not."
let entry['eg'] = ["token.visible = 1", "round = token.visible"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" macro.args variable 
let entry = {}
let entry['word'] = ["macro.args"]
let entry['param'] = ""
let entry['menu'] = "Variable which contains the arguments for the macro if it has been called [macro():]"
let entry['info'] = "Variable which contains the arguments for the macro if it has been called [macro():]"
let entry['eg'] = ["args = macro.args"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" macro.return variable 
let entry = {}
let entry['word'] = ["macro.return"]
let entry['param'] = "value"
let entry['menu'] = "Sets the return value for this macro, or gets the return value from a macro"
let entry['info'] = "Sets the return value for this macro, or gets the return value from a macro"
let entry['eg'] = ["result = macro.return", "macro.return = result"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" roll.count variable 
let entry = {}
let entry['word'] = ["roll.count"]
let entry['param'] = ""
let entry['menu'] = "Gets the current counter for the loop."
let entry['info'] = "Gets the current counter for the loop."
let entry['eg'] = ["count = roll.count"]
let entry['kind'] = "m"
call add(mtmacro#RollCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" 
""" Roll and Command String completion
""" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mtmacro#RollStringCompleteList = []


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TEXT 
let entry = {}
let entry['word'] = ["TEXT"]
let entry['param'] = ""
let entry['menu'] = "Text input type."
let entry['info'] = "Text input type. Text input box for the input() function, the contents typed in the box are assigned to the variable."
let entry['eg'] = []
let entry['options'] = ["WIDTH=nnn"]
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LIST 
let entry = {}
let entry['word'] = ["LIST"]
let entry['param'] = ""
let entry['menu'] = "Dropdown list of choices."
let entry['info'] = "Dropdown list of choices for the input() function. The variable is assigned the index of the item that was selected (starting at 0)"
let entry['eg'] = []
let entry['options'] = ["SELECT=nnn", "VALUE=STRING|NUMBER", "TEXT=TRUE|FALSE", "ICON=TRUE|FALSE", "ICONSIZE=nnn"]
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CHECK 
let entry = {}
let entry['word'] = ["CHECK"]
let entry['param'] = ""
let entry['menu'] = "Checkbox input type."
let entry['info'] = "Checkbox input type for the input() function. The variable is assigned 1 if the box is checked or 0 if it is not."
let entry['eg'] = []
let entry['options'] = []
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RADIO 
let entry = {}
let entry['word'] = ["RADIO"]
let entry['param'] = ""
let entry['menu'] = "Radio button input type."
let entry['info'] = "Radio button input type for the input() function. The variable is assigned the index of the value selected (starting at 0)."
let entry['eg'] = []
let entry['options'] = ["ORIENT=H|V", "VALUE=STRING|NUMBER", "SELECT=nnn" ]
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LABEL 
let entry = {}
let entry['word'] = ["LABEL"]
let entry['param'] = ""
let entry['menu'] = "Static text label."
let entry['info'] = "Static text label for the input() function. The variable name is ignored and nothing is assigned to it."
let entry['eg'] = []
let entry['options'] = ["TEXT=TRUE|FALSE", "ICON=TRUE|FALSE", "ICONSIZE=nnn" ]
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROPS 
let entry = {}
let entry['word'] = ["PROPS"]
let entry['param'] = ""
let entry['menu'] = "Controls to edit a property list."
let entry['info'] = "Controls to edit a property list for the input() function. The variable name contains a property string with all the values."
let entry['eg'] = []
let entry['options'] = ["SETVARS=TRUE|FALSE"]
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WIDTH 
let entry = {}
let entry['word'] = ["WIDTH="]
let entry['param'] = "nnn"
let entry['menu'] = "Width of the text control."
let entry['info'] = "Width of the text control for the input() function."
let entry['eg'] = []
let entry['options'] = []
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SELECT 
let entry = {}
let entry['word'] = ["SELECT="]
let entry['param'] = "nnn"
let entry['menu'] = "The initial value for list or radio box input."
let entry['info'] = "The initial value for list or raiod box for the input() function."
let entry['eg'] = []
let entry['options'] = []
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VALUE 
let entry = {}
let entry['word'] = ["VALUE="]
let entry['param'] = "type"
let entry['menu'] = "The type that is returned for list and radio buttons."
let entry['info'] = "The type that is returned for list and radio buttons for the input() function. Type is either STRING or NUMBER, if its STRING then the variabe is set to the string contents of the selected value, otherwise the variable is set to the index."
let entry['eg'] = []
let entry['options'] = []
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TEXT 
let entry = {}
let entry['word'] = ["TEXT="]
let entry['param'] = "boolean"
let entry['menu'] = "Is text shown for List or Label input types."
let entry['info'] = "Is text shown for this List or Label for the input() function. If value is FALSE then the text is not shown."
let entry['eg'] = []
let entry['options'] = []
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ICON 
let entry = {}
let entry['word'] = ["ICON="]
let entry['param'] = ""
let entry['menu'] = "If the string for the List item or Label contains an image asset."
let entry['info'] = "If the string for the List item or Label contains an image asset."
let entry['eg'] = []
let entry['options'] = []
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ICONSIZE 
let entry = {}
let entry['word'] = ["ICONSIZE="]
let entry['param'] = "nnn"
let entry['menu'] = "The size of the icon."
let entry['info'] = "The size of the icon (default size = 50)."
let entry['eg'] = []
let entry['options'] = []
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ORIENT 
let entry = {}
let entry['word'] = ["ORIENT="]
let entry['param'] = "oreientation"
let entry['menu'] = "Specifies the orientation of a group of radio buttons."
let entry['info'] = "Specifies the orientation of a group of radio buttons for the input function, valid values are H for horizontal and V for vertical."
let entry['eg'] = []
let entry['options'] = []
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SETVARS 
let entry = {}
let entry['word'] = ["SETVARS="]
let entry['param'] = "boolean"
let entry['menu'] = "Creates variables for the keys in the property string and assigns the values to them."
let entry['info'] = "Creates variables for the keys in the property string and assigns the values to them after the property list is edited with the dialog."
let entry['eg'] = []
let entry['options'] = []
let entry['kind'] = "s"
call add(mtmacro#RollStringCompleteList, entry)

