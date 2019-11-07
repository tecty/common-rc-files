#!/bin/sh

echo -n "Do you want to config git quickly? "
if ./src/yes_or_no.sh ; then
    echo -n "Your nick name for git: "
    read username

    echo -n "Your registered email in GitHub: "
    read email 

    echo -n "Your editor for git message: "
    read editor  

    git config --global user.name ${username}
    git config --global user.email ${email}
    git config --global core.editor ${editor}
fi