#!/bin/sh

cd bottle/lock

while true

do

	keyfile_path=../keys/

	output_path=../unlock/ 

	clear

	ls -l

	read -p "File Name (Without .zst): " file_to_unlock

	clear

	ls $keyfile_path

	read -p "Keyfile Name: " keyfile_file

	zstd -d --rm $file_to_unlock.zst

	gpg --batch -d --use-embedded-filename --passphrase-file "$keyfile_path$keyfile_file" --output "$output_path$file_to_unlock.out" $file_to_unlock

	clear

	read -p "Press Enter To Confirm Decryption. Otherwise, Exit Now"

	rm $file_to_unlock $keyfile_path$keyfile_file

done
