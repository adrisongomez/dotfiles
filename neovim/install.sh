#! /bin/bash
# This script will create all the symbolic links needed to run neovim from the
# source code in the current directory.

base_path="./lua"
neovim_home="$HOME/.config/nvim"


echo "🏁 Creating symbolic links..."

echo "👴🏽 Removing old symbolic links"
# Remove the old files if they exists
rm -rf "$HOME/.config/nvim"

function create_folder(){
    neovim_path="$neovim_home/lua/$1"
    echo -e "  - 🗂  Creating folder: $neovim_path"
    mkdir -p "$neovim_path"
}

function create_symbolic(){
    ln -s "$1" "$2"
}

function make_module(){

    module=$1
    module_path="$base_path/$module"

    for curr_file in `ls $module_path`; do
        curr_file_path="$module_path/$curr_file"
        filename=`basename $curr_file`
        abs_path=`realpath $curr_file_path`
        
        # if the curr_file is a file, create a symbolic link to the file
        if test -f $curr_file_path; then
            echo -e "   - 🔗 Creating symbolic link: $curr_file"
            create_symbolic $abs_path $neovim_path/$filename

        # if the curr_file is a directory, create a folder
        elif test -d $curr_file_path; then
            echo -e "   - 🗃 Nested Module: $curr_file"
            new_module="$module/$curr_file"
            create_folder $new_module 
            make_module $new_module
        fi
        
    done
}


for module in $(ls $base_path)
do
    echo "- 🗂 Module: $module"
    create_folder $module
    make_module $module
done

# here we are going to auto genarate this file base on the lua files in dotfiles/neovim/lua
ln -s $HOME/dotfiles/neovim/init.lua $HOME/.config/nvim/init.lua

echo "✅ Finish job"
echo "💻 😎 👾 Happy coding!"
