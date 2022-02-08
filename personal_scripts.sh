#! /bin/bash

function ow(){
    workspace_path="$HOME/GitHub/"
    selected_project=`ls $workspace_path | fzf`
    cd "$workspace_path/$selected_project"
}
