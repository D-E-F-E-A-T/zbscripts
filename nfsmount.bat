@Echo Off

REM batch file for auto mounting NFS shares created by Zubair Beg

mount -o nolock 192.168.0.88:/home/pi P:\
mount -o nolock 192.168.0.88:/media/storage S:\

Exit