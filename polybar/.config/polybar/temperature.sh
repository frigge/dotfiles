#!/usr/bin/env bash

temperature=$(sensors | grep Tdie)
temperature=$(echo $temperature | sed -E "s/^Tdie:\s*(\+.+C) \(.*$/\1/")

echo $temperature
