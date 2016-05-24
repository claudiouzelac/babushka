#!/usr/bin/env bash

# Unset any previous password should the user want to change it
unset WORK_PASSPHRASE

# This presents the chicken and egg problem
# In the case that pass isn't installed or the user doesn't have
# the password then the Babushka script will prompt the user
# for the password.  This seems acceptable.
export WORK_PASSPHRASE="$(pass work/channeliq/keys/ssh/bitbucket.org)"

babushka meet shenderson-work