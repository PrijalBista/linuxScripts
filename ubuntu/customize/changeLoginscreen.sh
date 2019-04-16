#! /bin/bash

echo "To change the login screen background using cli mode "

echo "reference from https://vitux.com/how-to-change-login-lock-screen-background-in-ubuntu/"

echo "The only thing we need to do is edit this file /usr/share/gnome-shell/theme/ubuntu.css"

echo "!!!!!!	Make a backup of this file before editing it  "
echo "open ubuntu.css in editor of ur choice "
echo "search for term loginDialog"

echo "change it to "

echo "
#lockDialogGroup {
background: #2c001e url(file:///[fileLocation/filename.png]);
background-repeat: no-repeat;
background-size: cover;
background-position: center;
}

"

echo "FOR EXAMPLE: "

echo "
lockDialogGroup {
background: #2c001e url(file:///home/gg/loginscreen.jpg);
background-repeat: no-repeat;
background-size: cover;
background-position: center;
}
"

echo "Your done :D"

