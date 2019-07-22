#!/bin/bash

# REF: https://www.cyberciti.biz/faq/howto-compile-and-run-c-cplusplus-code-in-linux/

sudo apt-get update
sudo apt-get install build-essential manpages-dev -y
sudo apt install gcc -y

# How do I compile the program on Linux?
# Use any one of the following syntax to compile the program called demo.c:

# cc program-source-code.c -o executable-file-name
# OR

# gcc program-source-code.c -o executable-file-name
# OR

# ## assuming that executable-file-name.c exists ##
# make executable-file-name
# In this example, compile demo.c, enter:

# cc     demo.c   -o demo
# OR

# ## assuming demo.c exists in the current directory ##
# make demo
