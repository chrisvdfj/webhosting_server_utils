#!/bin/sh

for i in `exiqgrep -i -f domain.com`; do exim -Mrm $i; done
