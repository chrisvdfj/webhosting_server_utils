# find out where your gigabytes are sitting and filling your hard drive, try the following commands.
Code:

/var$ du -h --max-depth=1

or

Code:

du -h --max-depth=1 |sort -n
