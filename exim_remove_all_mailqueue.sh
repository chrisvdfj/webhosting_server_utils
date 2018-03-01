#!/bin/bash

for i in `exiqgrep -i -f `; do exim -Mrm $i; done
