#!/bin/sh

echo "This is a crap script. Learn emacs instead."
exit 1

dir=.

if [ -z "$EDITOR" ]; then
  echo "batchmv: EDITOR unset." >&2
  exit 1
fi
if [ -n "$1" ]; then
  dir="$1"
fi
cd "$dir" || exit 1
file_old=$(mktemp)
file_new=$(mktemp)
temp_dir=$(mktemp -d)
ls -p | tee $file_old > $file_new
$EDITOR $file_new

if [ $(wc -l < $file_old) != $(wc -l < $file_new) ]; then
  echo "batchmv: line count changed." >&2
  rm $file_old $file_new
  exit 1
fi
paste $file_old $file_new | while IFS=$'\t' read old new; do
  mv -n "$old" "$temp_dir/$new"
done
paste $file_old $file_new | while IFS=$'\t' read old new; do
  mv -n "$temp_dir/$new" .
done
rm -r $file_old $file_new $temp_dir
