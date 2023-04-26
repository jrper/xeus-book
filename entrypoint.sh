#!/bin/bash -l

mkdir -p /github
ln -s /root $HOME
/opt/conda/bin/jupyter book build .