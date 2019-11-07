#!/bin/sh
# the promt for checking whether you are student in cse
echo "";
echo -n "Are you CSE student in UNSW? ";
if ./src/yes_or_no.sh ; then
  # grap the zid from user
  echo -n "What's your zid? : ";
  read zid;

  # refered to the new id 
  cat conf/cse_host.conf | sed "s/ZID_PLACE_HOLDER/${zid}/g"  >> ~/.ssh/config

  if ls ~/.ssh/id_rsa.pub >/dev/null 2>/dev/null ; then
    # user has already agree to have ssh key, then copy ssh key to cse
    echo ""
    echo "Login To CSE Here, then you don't have to input zPass when you go to cse"
    ssh-copy-id ${zid}@cse.unsw.edu.au ;
  fi;

fi
