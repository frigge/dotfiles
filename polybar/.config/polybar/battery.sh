#!/usr/bin/env bash

battery=$(upower --dump | grep percentage:)
battery=$(echo $battery | sed -E "s/^\s*percentage:\s*(.*%).*$/\1/")
echo " $battery"
