" Vim syntax file
" Language:	Fabric Kernel Language (KL)
" Maintainer:	Fabric Engine

if exists("b:current_syntax")
  finish
endif

" Comments
syn keyword klCommentTodo TODO FIXME XXX TBD contained
syn match   klLineComment "\/\/.*" contains=@Spell,klCommentTodo
syn region  klComment     start="/\*"  end="\*/" contains=@Spell,klCommentTodo

" Values
syn region  klStringD     start=+"+  skip=+\\\\\|\\"+  end=+"\|$+
syn region  klStringS     start=+'+  skip=+\\\\\|\\'+  end=+'\|$+
syn match   klNumber      /-\?\<\d\+\(\.\d\+\)\?\(e[+-]\?\d\+\)\?\>/
syn match   klNumberHex	  /-\?\<0[xX][0-9a-fA-F]\+\>/
syn keyword klBoolean     true false

" Other
syn keyword klType        Boolean Byte Data Float32 Float64 Integer Scalar SInt8 SInt16 SInt32 SInt64 Size String UInt8 UInt16 UInt32 UInt64 UnregisteredType Object
syn keyword klConditional if else switch
syn keyword klRepeat      for while do
syn keyword klBranch      break continue throw
syn keyword klStatement   return
syn keyword klIdentifier  this
syn keyword klLabel       case default
syn keyword klReserved    Ref alias in out io struct const require object var
syn keyword klFunction    function operator inline
syn match   klBraces      "[{}\[\]\<\>()]"

hi link klComment Comment
hi link klLineComment Comment
hi link klCommentTodo Todo

hi link klStringS String
hi link klStringD String
hi link klNumber Number
hi link klNumberHex Number
hi link klBoolean Boolean

hi link klType Type
hi link klConditional Conditional
hi link klRepeat Repeat
hi link klBranch Conditional
hi link klStatement Statement
hi link klIdentifier Identifier
hi link klLabel Label
hi link klReserved Keyword
hi link klFunction Function
hi link klBrace Function

let b:current_syntax = "kl"

