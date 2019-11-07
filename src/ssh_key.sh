#!/bin/sh

if ! ls ~/.ssh/id_rsa.pub >/dev/null 2>/dev/null ; then
  echo "";
  # user doesn't have ssh key
  echo "We detect you doesn't have a ssh key,";
  echo "You don't have to input password when you login via SSH or scp, which help you protect your password";
  echo "";
  echo -n "Do you want to have a SSH Key? ";
  if ./src/yes_or_no.sh ; then
    # gennerate ssh key for customer
    ssh-keygen -q
  fi
fi
