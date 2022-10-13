#! /bin/bash

function ow(){
    workspace_path="$HOME/GitHub/"
    selected_project=`ls $workspace_path | fzf`
    if [ -n "$selected_project" ]; then
        cd "$workspace_path/$selected_project"
    fi
}


function formatrdp(){
    git diff main..HEAD --name-only --diff-filter=AMR | grep .py$ | xargs autoflake8 --in-place --verbose
}

function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


function hasura_credentials() {
    export HASURA_GRAPHQL_ADMIN_SECRET=$(kubectl get secrets/hasura-secret --namespace hasura -o json | jq --raw-output '.data.HASURA_GRAPHQL_ADMIN_SECRET | @base64d') && hasura console --endpoint $1
}
