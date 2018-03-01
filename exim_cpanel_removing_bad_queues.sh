#!/bin/bash

# Removes Nobody Mail
for i in `exiqgrep -i -f nobody`; do exim -Mrm $i; done 



# Removes mail older than 3 Days
for i in `exiqgrep -i -o 259200`; do exim -Mrm $i; done


# Removes mail with weird characters
for i in `exiqgrep -i -f "^<>$"`; do exim -Mrm $i; done

