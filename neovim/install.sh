#!/usr/bin/

# This script will create all the symbolic links needed to run neovim from the
# source code in the current directory.

echo "🕔 Start create symbolic links"

echo "🏚  Removing old symbolic links"
# Remove the old files if they exists
rm -rf $HOME/.config/nvim

function create_symbolic(){
    source_path=$1
    neovim_path=$2
    for file in $(ls $source_path/*); do
        if [ -f $file ]; then
            filename=$(basename $file)
            abs_path=$(realpath $file)
            echo -e "   - 🔗 Creating symbolic link: $file"
            ln -s "$abs_path" "$neovim_path/$filename"
        fi
    done
}

function create_folder(){
    source_path="./lua/$1"
    neovim_path="$HOME/.config/nvim/lua/$1"
    echo -e "  - 🗂  Creating folder: $neovim_path"
    mkdir -p $neovim_path
}

for file in $(ls ./lua)
do
    echo "- 🗂  Folder: $file"
    create_folder $file
    create_symbolic $source_path $neovim_path
done

# here we are going to auto genarate this file base on the lua files in dotfiles/lua
ln -s $HOME/dotfiles/neovim/init.lua $HOME/.config/nvim/init.lua

echo "✅ Finish job"
echo "💻 😎 👾 Happy coding!"