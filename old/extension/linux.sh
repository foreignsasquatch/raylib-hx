gcc raylib.c -shared -fPIC -I include -lraylib -lhl -o raylib.hdll
sudo cp raylib.hdll /usr/local/lib