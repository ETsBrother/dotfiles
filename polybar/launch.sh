#!/bin/sh

pkill polybar
polybar --config=$HOME/.config/polybar/config.ini -r &
