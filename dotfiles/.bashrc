#!/bin/bash

set -o vi
alias ls="eza" #need comment
alias cat="ccat" #need comment

alias ggit="git add . && git commit -m test && git push"

alias iamcheck="aws cloudtrail lookup-events --lookup-attributes AttributeKey=Username,AttributeValue= --max-results 50"
`