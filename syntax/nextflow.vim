if exists("b:current_syntax")
  finish
endif

setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal colorcolumn=80

source $VIMRUNTIME/syntax/groovy.vim

syn region  nextflowBlockString          start=+'''+ keepend end=+'''+ contains=groovySpecialChar,groovySpecialError,@Spell,nextflowELExpr,@shell

syn match nextflowELExpr "\!{.\{-}}" contained


" Nextflow specifics

syn keyword nextflowDirective accelerator afterScript beforeScript cache conda container containerOptions cpus clusterOptions disk echo emit errorStrategy executor ext machineType include label maxErrors maxForks maxRetries main memory module penv pod publishDir queue scratch storeDir stageInMode stageOutMode take tag time validExitStatus

syn match nextflowBlock "\v(input|output|script|shell|exec):"

syn keyword nextflowKeyword from into as

syn keyword nextflowType file val process path tuple Channel env stdin

syn keyword nextflowSpecial workflow params launchDir

syn keyword nextflowConstant null


" Apply highlighting
let b:current_syntax = "nextflow"

hi def link nextflowELExpr            Identifier
hi def link groovyELExpr              Identifier

hi def link nextflowConstant          Constant
hi def link nextflowDirective         Statement
hi def link nextflowKeyword           Operator
hi def link nextflowType              Type
hi def link nextflowSpecial           Special
hi def link nextflowBlock             Function

hi def link nextflowBlockString       String
