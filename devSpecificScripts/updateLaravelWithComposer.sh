#! /bin/bash
echo "Laravel update Script"
echo "Tip: if you see any errors related to permission like cannot write to ~/.composer/cache permission denied "
echo "U can change the ownership of ~/.composer/ directory with the following command"
echo "sudo chown <your-user-name>:<your-group-name> ~/.composer/ "
echo "example:  sudo chown John:John ~/.composer/"

echo "Updating composer to latest version first"

composer self-update

echo "Now updating laravel to latest version"

composer global require laravel/installer

echo "Done!"
