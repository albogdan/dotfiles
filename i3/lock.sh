TMPBG=screen.png
scrot screen.png
#convert $TMPBG -scale 10% -scale 1000% $TMPBG
#convert $TMPBG  -gravity center -composite -matte $TMPBG
i3lock -B 5 -i  $TMPBG
