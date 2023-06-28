if exists("b:current_syntax")
  finish
endif

setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal colorcolumn=100

source $VIMRUNTIME/syntax/groovy.vim

syn region  nextflowBlockString          start=+'''+ keepend end=+'''+ contains=groovySpecialChar,groovySpecialError,@Spell,nextflowELExpr,@shell

syn match nextflowELExpr "\!{.\{-}}" contained


" Nextflow specifics

syn keyword nextflowDirective accelerator afterScript beforeScript cache conda container containerOptions cpus clusterOptions disk echo errorStrategy executor ext machineType include from label maxErrors maxForks maxRetries main memory module penv pod publishDir queue resourceLabels scratch storeDir stageInMode stageOutMode tag time validExitStatus

syn match nextflowBlock "\v(input|output|script|shell|exec):"

syn keyword nextflowType file val process path tuple Channel env stdin

syn keyword nextflowOperator branch buffer choice close collate collect collectFile combine concat count countBy cross distinct dump filter first flatMap flatten groupBy groupTuple ifEmpty into join last map max merge min mix multiMap phase print println randomSample reduce separate set splitCsv splitFasta splitFastq splitText spread sum tap toInteger toList toSortedList transpose unique until view subscribe

syn keyword nextflowSpecial workflow take emit params launchDir into as

syn keyword nextflowConstant null



" Apply highlighting
let b:current_syntax = "nextflow"

hi def link nextflowELExpr            Identifier
hi def link groovyELExpr              Identifier

hi def link nextflowConstant          Constant
hi def link nextflowDirective         Statement
hi def link nextflowOperator          Operator
hi def link nextflowType              Type
hi def link nextflowSpecial           Special
hi def link nextflowBlock             Function

hi def link nextflowBlockString       String
