#!/bin/bash

set -o vi
alias ls="eza" #need comment
alias cat="ccat" #need comment

alias ggit="git add . && git commit -m test && git push"
alias iamcheck="aws cloudtrail lookup-events --lookup-attributes AttributeKey=Username,AttributeValue= --max-results 50"
alias autocommit="fswatch -0 . -e '\\.git.*' | xargs -0 -n 1 -I{} git commit -am 'autocommit' && git push"
alias autoplan="fswatch -0 . -e '\\.git.*' -i '\\.tf$' | xargs -0 -n 1 -I{} terraform plan "



# Terraform alias settings
alias tfpp='terraform -chdir=environments/prod plan'
alias tfap='terraform -chdir=environments/prod apply'
alias tfpd='terraform -chdir=environments/stg plan'
alias tfad='terraform -chdir=environments/stg apply'
alias tfps='terraform -chdir=environments/dev plan'
alias tfsa='terraform -chdir=environments/dev apply'
export TF_CLI_ARGS_plan="--parallelism=1000"
export TF_CLI_ARGS_apply="--parallelism=1000"

