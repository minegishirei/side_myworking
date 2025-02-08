#!/bin/bash

set -o vi
alias ls="eza" #need comment
alias cat="ccat" #need comment

alias ggit="git add . && git commit -m test && git push"
alias iamcheck="aws cloudtrail lookup-events --lookup-attributes AttributeKey=Username,AttributeValue= --max-results 50"
alias autocommit="fswatch -0 . -e '\\.git.*' | xargs -0 -n 1 -I{} git commit -am 'edit file'"
alias autoplan="fswatch -0 . -e '\\.git.*' -i '\\.tf$' | xargs -0 -n 1 -I{} terraform plan "





