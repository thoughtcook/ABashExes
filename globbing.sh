#!/bin/bash
# list-glob.sh: Generating [list] in a for-loop, using "globbing" ...
# Globbing = filename expansion.
#Can only list file in the present directory right now, no recrusive.

GlobDir=/usr/src/linux/samples

echo

cd $GlobDir

for file in *
#           ^  Bash performs filename expansion
#+             on expressions that globbing recognizes.
do
  echo $file
  ls -lh $file  # Lists all files in $PWD (current directory).
  #  Recall that the wild card character "*" matches every filename,
  #+ however, in "globbing," it doesn't match dot-files.

  #  If the pattern matches no file, it is expanded to itself.
  #  To prevent this, set the nullglob option
  #+   (shopt -s nullglob).
  #  Thanks, S.C.
done
