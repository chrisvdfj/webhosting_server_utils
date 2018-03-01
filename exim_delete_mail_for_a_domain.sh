#!/bin/sh

for i in `exiqgrep -i -r domain.com`; do exim -Mrm $i; done
