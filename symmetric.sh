#!/bin/sh

cd bottle/unlock

for i in $(ls)

do

	keys_file=../keys/$i.keyfile

	output=../lock/$i.gpg

	base64 -w 0 /dev/urandom | head -c 32 > $keys_file

	gpg --batch -cv --passphrase-file $keys_file --output $output $i

	zstd --rm --adapt $output

	rm $i

done
