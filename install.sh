#!/bin/sh

APP_DIR=$HOME/.zozovp_dotfile

function copy_files {
    cd "$APP_DIR"
    for f in .*; do
        if [[ $f != ".git"  && $f != "." && $f != ".." && $f != ".gitmodules" ]]; then
            cp -r $f $HOME
        fi
    done
}

function install {
    rm -rf "$APP_DIR"
    echo "Installing dotfile for the first time"
    git clone https://github.com/zozovp/dotfile.git "$APP_DIR"
    copy_files
}


case $1 in
    copy)
        copy_files
        ;;
    *)
        if [ ! -d "$APP_DIR" ]; then
            install
        else
            echo "dotfile is already installed"
        fi
        ;;
esac
