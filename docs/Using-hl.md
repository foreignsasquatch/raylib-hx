# Using the hashlink bindings
## On linux
- Compile and install raylib in the `source/lib/src` directory by using these commands:
`make PLATFORM=PLATFORM_DESKTOP RAYLIB_LIBTYPE=SHARED` and `sudo make install RAYLIB_LIBTYPE=SHARED`
- Next run the `linux.sh` script in `extension` and your good to go :D

> Side note: Add `export LD_LIBRARY_PATH="/usr/local/lib/:${LD_LIBRARY_PATH}"` to your shell config if hashlink cant find `raylib.hdll`

## On windows
- Compile raylib dll's and get the hl dlls and put them in the lib folder.
- Compile using the provided visual studio solution.
- Copy the hdll to somewhere in path.

## On macos
`¯\_(ツ)_/¯`
