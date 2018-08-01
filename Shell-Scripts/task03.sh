#!/bin/bash

function lsr
{
    echo "${1}"
    
    if [[-d "${1}"]]; then
    
        for child in "${1}"/*; do
        lsr "${child}"
        done
    fi
}
