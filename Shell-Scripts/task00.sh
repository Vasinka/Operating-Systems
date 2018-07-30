#!/bin/bash

ps -u "${1}" -o rss= -o vss= | awk '{d=$1/$2; print $1,$2,d}'| sort -k 1 -nr
