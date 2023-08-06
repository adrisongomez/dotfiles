#! /bin/bash

function ow(){
    workspace_path="$HOME/GitHub/"
    project_path="$HOME/projects"
    selected_project=`find $workspace_path $project_path -type d -maxdepth 1 | fzf`
    if [ -n "$selected_project" ]; then
        cd "$selected_project"
    fi
}


function formatrdp(){
    git diff main..HEAD --name-only --diff-filter=AMR | grep .py$ | xargs autoflake8 --in-place --verbose
}

function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


function hasura_credentials() {
    export HASURA_GRAPHQL_ADMIN_SECRET=$(kubectl get secrets/hasura-secret --namespace hasura -o json | jq --raw-output '.data.HASURA_GRAPHQL_ADMIN_SECRET | @base64d') && hasura console --endpoint $1
}

function formatblack(){
    # Format all the file not staged
    git status -s | sed -e s/M// | xargs -n1 black
}

# PROMPT='%(?:%{%}➜ :%{%}➜ ) %{%}%c%{%} $(git_prompt_info)'
PROMPT=' %B%(?.%F{yellow}{%F{magenta}A%F{yellow}}.%F{red}?%?)%f%F{yellow}%b %B%F{cyan}%1~%f%b :: $(git_prompt_info)'
RPROMPT='%*'

