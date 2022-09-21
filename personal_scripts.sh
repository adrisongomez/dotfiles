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
