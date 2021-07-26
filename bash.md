# about bash

## exclude match filename

    # exclude file: !(<filename1>|<filename2>)
    cd ~ && echo !(.bashrc|.vimrc) # echo all file, exclude .bashrc and .vimrc

    # if used in script, turn on the option
    shopt -s extglob

## last command

    # about "!"
    vim /etc/apt/sources.list # oops, it need root permission
    sudo !! # run last command with sudo
    echo "!!" > /tmp/aaa # save last command into /tmp/aaa
    !vim # run last command that start with vim

    # ctrl+r
    <ctrl+r>
    vim # it will show last command start with vim
    <ctrl+r>
    # it will show previous one

    # cd to last directory
    cd -