#!/bin/bash

PASS="pass"

tmux kill-session -t ngrok
tmux new-session -d -s ngrok "echo $PASS | sudo -S service ssh restart && /tmp/ngrok tcp 22"
