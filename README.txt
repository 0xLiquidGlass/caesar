Caesar - A Project For Encrypting Files Without Passwords

1. How To Run?

	Type in terminal "./" and followed by the file name

2. Platform

	- Linux

	- MacOS (idk but since it is based on BSD...)

	- Cygwin (Windows)
	
	- Termux (Android)

3. Dependencies

	- GnuPG

	- zstd

4. Why Caesar?

	- Does not require manually typing passwords

	- Random generated password, therefore safer

	- Fully transparent and modifiable code

	- No passwords to remember or forget

5. What Each File Does?

	a. mkdir.sh

		- Creates necessary directories (or folders)

	b. symmetric.sh

		- Generates a symmetric key (32 bytes or 256 bits)

		- Locks file

		- Removes unencrypted file
		
		- Creates a file checksum using Zstandard

	c. unlock.sh

		- Unlocks encrypted file

6. How To Use Caesar?

	a. Encryption

		- Run symmetric.sh

		- Store the generated key somewhere safe

		- Delete the keys from the keys from the keys directory after

	b. Decryption

		- Import the keys to the keys directory

		- Ensure that the encrypted file is in the lock directory

		- Run unlock.sh

7. Disclaimer

	- If you have sensitive files to encrypt do not use rm, use shred instead
